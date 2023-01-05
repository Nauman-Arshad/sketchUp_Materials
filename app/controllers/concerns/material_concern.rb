require "uri"
require "net/http"
module MaterialConcern
  extend ActiveSupport::Concern

  def request_data(url)
    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true

    request = Net::HTTP::Get.new(url)
    request["accept"] = "text/plain"
    request["Authorization"] = "Bearer FDDBB275CCB42F7475D36DBEABD98645F61F625CB31ED28A03F34D80AAF71C6D"
    request["Cookie"] = ".AspNetCore.LocalAccessTokenValidation=CfDJ8K7yQcQ9kB9Okz_e40tXwKkBPre1pVAYebDPhN3ZPxAC24FBObVq44KsylZR1FFfyytns9xuApOlpSlrtPcC80qRugpJHK8CZ9cfT1ur1KZ6bWyEuaJaZFoB1132VY5qNEaGJC_7SlgEZB0cjdbP0tWI-bbPlod4YVeU1BNDrAUuU8nwThN3v0KM-xpq3d33mcXZxYOP-l-HNIWtgSP5-O9MXoDhto1OrCJdb_Cy_DH7YOS-i4jVcZiJ-fNo96olACRKy5M-bQ4mS_7gr2tST7gmlD79thq4-AOAyEWLg8PrQ8D3GU4rNC4DxHSxP3DBXS3bhqd3Qd_w-bFCB1VvEMtBtOBIzxyyHM55D0CidRjQ0h2UHFbdozNvAEAbGpRnAcplg3ePUVPDa7Lx_Oz-3sqCJBKDF1tXfDgXGoRF9iY9WCgdLB2K0nZvWleZTEfy06zsi1xFi_CZG8yGaCliCyY2sApxZMr1_VO6bQgoEZlVR2G8OmaBEYibYXjUq7XQn-mjEQAzysDKrHpKuvE7Wxi36JciuNyBXctHF90tW3FoKkeIcc--uQNnLRX1vByOmvQOL3enFSqw956xDiN2WFzQmbaA25akWH6go20SI5Eua1ACi-ci7MiyDw7M_I30M45Rrvi7YL_-Jbk5lJAu4qKbV_EU5-QMXNpP4QTP9Qv0OWoB-qwpcs9CpM7iFzSIaNOPhcn4Pck5C7LvP3VDF_yI1weF572DhdeJZf3qR1Lkoa5qzjZkoJWjHndTsUdOc0LoNr0dmu5IYvAgEcJ0fJMFrsqlko4c8tf943oslpU-tPvBB-t2T6XDSaZMub8MIKtzwSqEm4Cvb1TCLvTGX9s2iPaib2Bfx6KLsp20p4ZY_Rrk7MF25VFscYO1aY56_0fodQk13mWFsLbfP1-9rGaQdYOwPFHgD8Rhgsk9t_YVeESSBPp8TJEzZH_cO2zsOg"

    response = https.request(request)
    JSON.parse(response.body)["data"]
  end
end