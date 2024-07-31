AdminUser.create!([
                    { email: "admin@example.com",
encrypted_password: "$2a$12$jsNOrjFNFIRPH.sNlxAnJ.s3hvX/8bF783hVb2wt4HpFm5LJSIKz.",
reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil }
                  ])

TaxRateByLocation.create!([
                            { province:    "Manitoba",
                              current_gst: 5000,
                              current_hst: 0,
                              current_pst: 7000,
                              current_qst: 0 },
                            { province:    "Alberta",
                              current_gst: 5000,
                              current_hst: 0,
                              current_pst: 0,
                              current_qst: 0 },
                            { province:    "Saskatchewan",
                              current_gst: 5000,
                              current_hst: 0,
                              current_pst: 6000,
                              current_qst: 0 },
                            { province:    "British Columbia",
                              current_gst: 5000,
                              current_hst: 0,
                              current_pst: 7000,
                              current_qst: 0 },
                            { province:    "New Brunswick",
                              current_gst: 0,
                              current_hst: 15_000,
                              current_pst: 0,
                              current_qst: 0 },
                            { province:    "Newfoundland and Labrador",
                              current_gst: 0,
                              current_hst: 15_000,
                              current_pst: 0,
                              current_qst: 0 },
                            { province:    "Northwest Territories",
                              current_gst: 5000,
                              current_hst: 0,
                              current_pst: 0,
                              current_qst: 0 },
                            { province:    "Nova Scotia",
                              current_gst: 0,
                              current_hst: 15_000,
                              current_pst: 0,
                              current_qst: 0 },
                            { province:    "Nunavut",
                              current_gst: 5000,
                              current_hst: 0,
                              current_pst: 0,
                              current_qst: 0 },
                            { province:    "Ontario",
                              current_gst: 0,
                              current_hst: 13_000,
                              current_pst: 0,
                              current_qst: 0 },
                            { province:    "Prince Edward Island",
                              current_gst: 0,
                              current_hst: 15_000,
                              current_pst: 0,
                              current_qst: 0 },
                            { province:    "Yukon",
                              current_gst: 5000,
                              current_hst: 0,
                              current_pst: 0,
                              current_qst: 0 },
                            { province:    "Quebec",
                              current_gst: 8000,
                              current_hst: 0,
                              current_pst: 0,
                              current_qst: 9975 }
                          ])
ServiceType.create!([
                      { service_type_name: "Mentoring Session",
                        service_type_description: "A meeting to mentor someone on a specific
                        topic.", meeting_required: true },
                      { service_type_name:        "Map Making",
                        service_type_description: "This involves designing and drawing a map of
                        something, such as a local area or the interior of a structure.",
                        meeting_required:         false },
                      { service_type_name: "Optimization",
                        service_type_description: "This involves optimizing some aspect of your
                        TTRPG experience on a mechanical level.", meeting_required: false },
                      { service_type_name: "Research",
                        service_type_description: "Provide research on a specific topic related
                        to TTRPGs", meeting_required: false },
                      { service_type_name: "Teaching",
                        service_type_description: "Teaching someone how to do a specific thing
                          for TTRPGs.", meeting_required: true },
                      { service_type_name: "Artwork", service_type_description: "Making artwork.",
                        meeting_required: false },
                      { service_type_name: "Designing",
                    service_type_description: "Designing something related to TTRPGs. This can
                     involve designing player Species, Classes, Organizations, or designing
                     Encounters, Dungeons, and Monsters.", meeting_required: false },
                      { service_type_name: "Writing",
                    service_type_description: "Writing something for TTRPGs, typically related
                     to narrative. Could be NPC dialogue, overarching plots, character backstories,
                     etc etc.", meeting_required: false }
                    ])
OrderItemStatus.create!([
                          { status: "completed" },
                          { status: "in-progress" },
                          { status: "accepted" },
                          { status: "unpaid" },
                          { status: "cancelled" },
                          { status: "paid" }
                        ])

User.create!([
               { user_name: "Chris", password: "password", email: "chrissmithart@proton.me",
             description: "DM, Artist, Programmer.", address: "888 Mulvey Avenue",
             tax_rate_by_location_id: 14,
             encrypted_password: "$2a$12$GTHi0aOZvH1Y9atCSU.t7e9bFYWfdQVsYRV5n8NqsGbpe6G6gmK9i",
             reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil },
               { user_name: "Zach", password: "password", email: "zmschuster@gmail.com",
             description: "Skater, Artist, fun guy, super tall.", address: "Somewhere...",
             tax_rate_by_location_id: 3, encrypted_password: "password", reset_password_token: nil,
             reset_password_sent_at: nil, remember_created_at: nil },
               { user_name: "Jordan", password: "password", email: "jpfinn@gmail.com",
             description: "Comic book writer, DM, Forgotten Realms is my favorite D&D setting.",
             address: "Someplace", tax_rate_by_location_id: 11,
             encrypted_password: "$2a$12$9HZT0FrNa8TPHur1Us3mGumuaYKTFICeY3U5nsmSTo6kRQXD4PyP2",
             reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil },
               { user_name: "Andrew", password: "password", email: "abuttz@gmail.com",
             description: "Electrician, DM, Player, awesome person.", address: "Somewhere",
             tax_rate_by_location_id: 1, encrypted_password: "password", reset_password_token: nil,
             reset_password_sent_at: nil, remember_created_at: nil },
               { user_name: "Bill", password: "password", email: "willuprising@gmail.com",
             description: "Electrician, Player, has an epic beard.", address: "another place",
             tax_rate_by_location_id: 1, encrypted_password: "password", reset_password_token: nil,
             reset_password_sent_at: nil, remember_created_at: nil },
               { user_name: "Nick", password: nil, email: "nick@smith.com",
             description: "Chris's awesome brother", address: "123 Fake Street",
             tax_rate_by_location_id: 1,
             encrypted_password: "$2a$12$1OKXo3EQh2pGKBwAGexW8.38vvpijz7VloB6IVOnLJtUPNpdXPwRS",
             reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil },
               { user_name: "Chrus Smoth", password: nil, email: "chrustacean69420@gmail.com",
             description: "something", address: "18 Atkinson Road", tax_rate_by_location_id: 6,
             encrypted_password: "$2a$12$oGg3Davr86q6dk022F/GDuJ7ZRAAfxhg/K0orbYA1QhDKptYJFiPy",
             reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil },
               { user_name: "BeetleMan", password: nil, email: "beetleman@gmail.com",
             description: "A big bug person", address: "123 Shell Street",
             tax_rate_by_location_id: 3,
             encrypted_password: "$2a$12$26xrqANn2T3bc2/wtq6JuOaG10KjtaW8gRsoe3TBpC4nPX6wcFIWe",
             reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil },
               { user_name: "Jeff", password: nil, email: "jeff@jeff.com",
               description: "My name is Jeff",
             address: "123 Jeff Street", tax_rate_by_location_id: 14,
             encrypted_password: "$2a$12$ObJ59WmAB36KfQlHnnwRCOzU5XD6P09Aa7xaFQIQLxP85TJ1XsOYK",
             reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil },
               { user_name: "Someone", password: nil, email: "someone123@gmail.com",
             description: "Someone Somewhere", address: "Somewhere 123 Street",
             tax_rate_by_location_id: 6,
             encrypted_password: "$2a$12$7Ali8UO8xPzVtljj2v5nLOfBTVpWfUsCDw155U3qRhsLCuAb.87u.",
             reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil }
             ])

ActiveStorage::VariantRecord.create!([
                                       { blob_id:          5,
                                         variation_digest: "uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=" },
                                       { blob_id:          3,
                                         variation_digest: "uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=" },
                                       { blob_id:          2,
                                         variation_digest: "uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=" },
                                       { blob_id:          5,
                                         variation_digest: "oY0vpDnCSCkHnDGp1YbIHGT2RG8=" },
                                       { blob_id:          6,
                                         variation_digest: "oY0vpDnCSCkHnDGp1YbIHGT2RG8=" },
                                       { blob_id:          5,
                                         variation_digest: "grOmaDDD+qNEEvS3BZzaB227f44=" },
                                       { blob_id:          6,
                                         variation_digest: "grOmaDDD+qNEEvS3BZzaB227f44=" },
                                       { blob_id:          5,
                                         variation_digest: "Bwk2KnB+OXmuJ8AZwOWWxe3HQLc=" },
                                       { blob_id:          6,
                                         variation_digest: "kwyO3uzvkt+rcijHycD96q9j0ME=" },
                                       { blob_id:          5,
                                         variation_digest: "kwyO3uzvkt+rcijHycD96q9j0ME=" },
                                       { blob_id:          6,
                                         variation_digest: "Bwk2KnB+OXmuJ8AZwOWWxe3HQLc=" },
                                       { blob_id:          2,
                                         variation_digest: "kwyO3uzvkt+rcijHycD96q9j0ME=" },
                                       { blob_id:          4,
                                         variation_digest: "kwyO3uzvkt+rcijHycD96q9j0ME=" },
                                       { blob_id:          3,
                                         variation_digest: "kwyO3uzvkt+rcijHycD96q9j0ME=" },
                                       { blob_id:          2,
                                         variation_digest: "Bwk2KnB+OXmuJ8AZwOWWxe3HQLc=" },
                                       { blob_id:          4,
                                         variation_digest: "kew+Jjn6rrgNk4/Pj4n+LM0hZVg=" },
                                       { blob_id:          2,
                                         variation_digest: "kew+Jjn6rrgNk4/Pj4n+LM0hZVg=" },
                                       { blob_id:          5,
                                         variation_digest: "kew+Jjn6rrgNk4/Pj4n+LM0hZVg=" },
                                       { blob_id:          3,
                                         variation_digest: "kew+Jjn6rrgNk4/Pj4n+LM0hZVg=" },
                                       { blob_id:          3,
                                         variation_digest: "Bwk2KnB+OXmuJ8AZwOWWxe3HQLc=" },
                                       { blob_id:          6,
                                         variation_digest: "kew+Jjn6rrgNk4/Pj4n+LM0hZVg=" }
                                     ])
ActiveStorage::Blob.create!([
                              { key: "sl3cbvrk1rj0pnymf1gkkxw2uhut", filename: "moon.png",
                              content_type: "image/png",
                              metadata: { "identified" => true, "analyzed" => true },
                              service_name: "local",
                            byte_size: 259_425, checksum: "Hf4M3dQ3VYW8DdSAkjYG0Q==" },
                              { key: "fxcgh4d6529wicfo29xi9mx92r6j", filename: "Chris.png",
                              content_type: "image/png",
                            metadata: { "identified" => true, "analyzed" => true },
                            service_name: "local", byte_size: 242_683,
                            checksum: "RtCGRcRE1u7QamIG9oC5uA==" },
                              { key: "15oljii9uue8v1ka6jel8kyt6zfw", filename: "Jordan.png",
                              content_type: "image/png",
                            metadata: { "identified" => true, "analyzed" => true },
                            service_name: "local", byte_size: 2_522_992,
                            checksum: "Bu3j4Bus+leh16qfXvxuZg==" },
                              { key: "qy6qapn0vfe4xvtg4blqnh2tl9qm", filename: "Zach.png",
                              content_type: "image/png",
                            metadata: { "identified" => true, "analyzed" => true },
                            service_name: "local", byte_size: 448_012,
                            checksum: "oqB23uQFxVIfomlJceBuTg==" },
                              { key: "gf5bm3rgbs3hrwfx0rx6r94bvdxh", filename: "Bill.png",
                              content_type: "image/png",
                            metadata: { "identified" => true, "analyzed" => true },
                            service_name: "local", byte_size: 10_386,
                            checksum: "10hl4QlPWsCg54KHVEn/Zg==" },
                              { key: "0a5vc1633wzq7d4g4vuyx4kyqitk", filename: "Andrew.png",
                              content_type: "image/png",
                            metadata: { "identified" => true, "analyzed" => true },
                            service_name: "local", byte_size: 215_341,
                            checksum: "GylDxRfNBgwgX15L5kYx0Q==" },
                              { key: "2ntdxmlaalo0cielpz5dlpdq6w07", filename: "Bill.png",
                              content_type: "image/png",
                            metadata: { "identified"=>true }, service_name: "local",
                            byte_size: 2720, checksum: "+qixcYA4o7XNMbah8Ic7JQ==" },
                              { key: "u368pax3t3w7niqanejgnbkdgfbi", filename: "Jordan.png",
                              content_type: "image/png",
                            metadata: { "identified" => true, "width" => 65, "height" => 100,
                            "analyzed" => true }, service_name: "local",
                            byte_size: 12_845, checksum: "f79QkdXczB4pksULaqFekQ==" },
                              { key: "j1mquaiupd2cm3q60tofyyk657a7", filename: "Chris.png",
                              content_type: "image/png",
                            metadata: { "identified" => true, "width" => 100, "height" => 89,
                            "analyzed" => true }, service_name: "local", byte_size: 13_713,
                            checksum: "ho3oAcp5duKvZN/RVJdYRA==" },
                              { key: "he1vh4fg57vtl8ndvhsytp3tb5e0", filename: "Bill.png",
                              content_type: "image/png",
                            metadata: { "identified" => true, "width" => 250,
                            "height" => 190, "analyzed" => true }, service_name: "local",
                            byte_size: 5330, checksum: "B6tJLsU4jhclLmj+A3kCBA==" },
                              { key: "mf83p50oocv3jezdtckcc5yiq5vn", filename: "Andrew.png",
                              content_type: "image/png",
                            metadata: { "identified" => true, "width" => 246, "height" => 250,
                            "analyzed" => true }, service_name: "local", byte_size: 82_931,
                            checksum: "ITpzU3M0ylDwITs6EedwuQ==" },
                              { key: "3111hpa0goza5ftoxyym25r46g7d", filename: "Bill.png",
                              content_type: "image/png",
                            metadata: { "identified" => true, "width" => 500, "height" => 380,
                            "analyzed" => true }, service_name: "local", byte_size: 16_279,
                            checksum: "E72x0pi6+cFFviiD+/W5XQ==" },
                              { key: "p1otz9pxoicn6dea80wu9lhp89zp", filename: "Andrew.png",
                              content_type: "image/png",
                            metadata: { "identified"=>true }, service_name: "local",
                            byte_size: 133_224, checksum: "8TXqQ3RLOCRowcNO9M5yng==" },
                              { key: "iuok96ycc0r9impfire9clbeor7e", filename: "Bill.png",
                              content_type: "image/png",
                            metadata: { "identified" => true, "width" => 500, "height" => 380,
                            "analyzed" => true }, service_name: "local", byte_size: 16_279,
                            checksum: "siCh0G92BAyJB4rEcC55hg==" },
                              { key: "vgrs0lq2c6uqlfirde5vcyjnubm5", filename: "Andrew.png",
                              content_type: "image/png",
                            metadata: { "identified" => true, "width" => 246, "height" => 250,
                            "analyzed" => true }, service_name: "local", byte_size: 82_931,
                            checksum: "HFH3l5StOjHEEX59E8jh3w==" },
                              { key: "961qc4okdcy5cyx4d86z7zr9hm0z", filename: "Bill.png",
                              content_type: "image/png",
                            metadata: { "identified" => true, "width" => 250, "height" => 190,
                            "analyzed" => true }, service_name: "local", byte_size: 5330,
                            checksum: "DOawad/VK7sY6Tm1fcLekA==" },
                              { key: "7c8vtenml47bld0orelkwim7xy86", filename: "Andrew.png",
                              content_type: "image/png",
                            metadata: { "identified" => true, "width" => 493, "height" => 500,
                            "analyzed" => true }, service_name: "local", byte_size: 229_525,
                            checksum: "bI9uNrY3HpT2DXimnWxDKQ==" },
                              { key: "besctthgbs7qw6agfuinppymsp0z", filename: "Chris.png",
                              content_type: "image/png",
                            metadata: { "identified" => true, "width" => 250, "height" => 223,
                            "analyzed" => true }, service_name: "local", byte_size: 61_189,
                            checksum: "MU603Eh1by0JfnaO3bAsIQ==" },
                              { key: "0txq29w9zyijlj8fpn1b7z8yawr0", filename: "Zach.png",
                              content_type: "image/png",
                            metadata: { "identified" => true, "width" => 250, "height" => 196,
                            "analyzed" => true }, service_name: "local", byte_size: 111_390,
                            checksum: "ZTDTc8+1iKehR8/qBPTKmA==" },
                              { key: "028rvpvwablbe92lsh7rrkwpxltg", filename: "Jordan.png",
                              content_type: "image/png",
                            metadata: { "identified" => true, "width" => 161, "height" => 250,
                            "analyzed" => true }, service_name: "local", byte_size: 59_341,
                            checksum: "FFzYedJErNSiBMO2++HfuA==" },
                              { key: "9bg4zkeq4hncisrckuwag7hpbnrg", filename: "Chris.png",
                              content_type: "image/png",
                            metadata: { "identified" => true, "width" => 500, "height" => 446,
                            "analyzed" => true }, service_name: "local", byte_size: 193_904,
                            checksum: "C9YRkUUxj8dT3kDuV/iY9A==" },
                              { key: "xnmskhnmph0fxx747jxygnimotv8", filename: "Zach.png",
                              content_type: "image/png",
                            metadata: { "identified" => true, "width" => 100, "height" => 78,
                            "analyzed" => true }, service_name: "local", byte_size: 19_575,
                            checksum: "oB811+iBQb8Iho/qxyNQgg==" },
                              { key: "keucpools0mg3khq6vxy59k3wk6y", filename: "Chris.png",
                              content_type: "image/png",
                            metadata: { "identified" => true, "width" => 100, "height" => 89,
                            "analyzed" => true }, service_name: "local", byte_size: 13_713,
                            checksum: "jknnn1zrOwk+K07dX95Dpw==" },
                              { key: "2nd91v6ee1usg3dxjmea1ivfsa8l", filename: "Bill.png",
                              content_type: "image/png",
                            metadata: { "identified" => true, "width" => 100, "height" => 76,
                            "analyzed" => true }, service_name: "local", byte_size: 2720,
                            checksum: "7zcREl3Y8H0bB6zDQqS2ig==" },
                              { key: "wp5krkxhpuzgza3uq388f8zn6f4u", filename: "Jordan.png",
                              content_type: "image/png",
                            metadata: { "identified" => true, "width" => 65, "height" => 100,
                            "analyzed" => true }, service_name: "local", byte_size: 12_845,
                            checksum: "GWEPV1Ocnc7qlU3hXD91dg==" },
                              { key: "d6yxsf5sg1df47rgh8klygtdy3ng", filename: "Jordan.png",
                              content_type: "image/png",
                            metadata: { "identified" => true, "width" => 323, "height" => 500,
                            "analyzed" => true }, service_name: "local", byte_size: 192_069,
                            checksum: "fULPHUfOe2km8ghN3z85BA==" },
                              { key: "539muxjlqkw893bm088l2cz5kglp", filename: "Andrew.png",
                              content_type: "image/png",
                            metadata: { "identified" => true, "width" => 99, "height" => 100,
                            "analyzed" => true }, service_name: "local", byte_size: 17_891,
                            checksum: "PEAT7voqlwefFpR3a8M5sQ==" }
                            ])
ActiveStorage::Attachment.create!([
                                    { name: "image", record_type: "User", record_id: 1,
                                      blob_id: 2 },
                                    { name: "image", record_type: "User", record_id: 4,
                                      blob_id: 3 },
                                    { name: "image", record_type: "User", record_id: 2,
                                      blob_id: 4 },
                                    { name: "image", record_type: "User", record_id: 6,
                                      blob_id: 5 },
                                    { name: "image", record_type: "User", record_id: 5,
                                      blob_id: 6 },
                                    { name: "image", record_type: "ActiveStorage::VariantRecord",
                                      record_id: 1, blob_id: 7 },
                                    { name: "image", record_type: "ActiveStorage::VariantRecord",
                                      record_id: 2, blob_id: 8 },
                                    { name: "image", record_type: "ActiveStorage::VariantRecord",
                                      record_id: 3, blob_id: 9 },
                                    { name: "image", record_type: "ActiveStorage::VariantRecord",
                                      record_id: 4, blob_id: 10 },
                                    { name: "image", record_type: "ActiveStorage::VariantRecord",
                                      record_id: 5, blob_id: 11 },
                                    { name: "image", record_type: "ActiveStorage::VariantRecord",
                                      record_id: 6, blob_id: 12 },
                                    { name: "image", record_type: "ActiveStorage::VariantRecord",
                                      record_id: 7, blob_id: 13 },
                                    { name: "image", record_type: "ActiveStorage::VariantRecord",
                                      record_id: 8, blob_id: 14 },
                                    { name: "image", record_type: "ActiveStorage::VariantRecord",
                                      record_id: 9, blob_id: 15 },
                                    { name: "image", record_type: "ActiveStorage::VariantRecord",
                                      record_id: 10, blob_id: 16 },
                                    { name: "image", record_type: "ActiveStorage::VariantRecord",
                                      record_id: 11, blob_id: 17 },
                                    { name: "image", record_type: "ActiveStorage::VariantRecord",
                                      record_id: 12, blob_id: 18 },
                                    { name: "image", record_type: "ActiveStorage::VariantRecord",
                                      record_id: 13, blob_id: 19 },
                                    { name: "image", record_type: "ActiveStorage::VariantRecord",
                                      record_id: 14, blob_id: 20 },
                                    { name: "image", record_type: "ActiveStorage::VariantRecord",
                                      record_id: 15, blob_id: 21 },
                                    { name: "image", record_type: "ActiveStorage::VariantRecord",
                                      record_id: 16, blob_id: 22 },
                                    { name: "image", record_type: "ActiveStorage::VariantRecord",
                                      record_id: 17, blob_id: 23 },
                                    { name: "image", record_type: "ActiveStorage::VariantRecord",
                                      record_id: 18, blob_id: 24 },
                                    { name: "image", record_type: "ActiveStorage::VariantRecord",
                                      record_id: 19, blob_id: 25 },
                                    { name: "image", record_type: "ActiveStorage::VariantRecord",
                                      record_id: 20, blob_id: 26 },
                                    { name: "image", record_type: "ActiveStorage::VariantRecord",
                                      record_id: 21, blob_id: 27 }
                                  ])

Cart.create!([
               { total: 0, user_id: 1 },
               { total: 0, user_id: 4 },
               { total: 0, user_id: 9 },
               { total: 100, user_id: 10 },
               { total: 0, user_id: 11 }
             ])

CartItem.create!([
                   { quantity: 1, cart_id: 4, service_offer_id: 7 }
                 ])

ServiceOffer.create!([
                       { service_offer_name: "Boss Monster Design", service_offer_price: 500,
service_offer_notes: "Mentoring you on how to design Boss Monsters for your TTRPG games.",
google_forms_link: "google.com", caldotcom_link: "cal.com", slot_availabilty: 3, user_id: 1,
service_type_id: 1 },
                       { service_offer_name: "Player Character Optimization (5e)",
                       service_offer_price: 600,
                     service_offer_notes: "I will optimize your 5th Edition D&D Character.
                     You will provide an idea and an already filled in character sheet and I will
                     provide you with a new character sheet that optimizes your character
                     mechanically.", google_forms_link: "google.com", caldotcom_link: "cal.com",
                     slot_availabilty: 1, user_id: 2, service_type_id: 3 },
                       { service_offer_name: "Local Area Map", service_offer_price: 1000,
                     service_offer_notes: "I will draw you a map of the local area for your
                     TTRPG game. You will provide me with written documents details what needs to
                     be in the map. I will provide you with a digital file of the map.",
                     google_forms_link: "google.com", caldotcom_link: "cal.com",
                     slot_availabilty: 2, user_id: 1, service_type_id: 2 },
                       { service_offer_name: "Dungeon Map", service_offer_price: 4500,
                     service_offer_notes: "I will draw you a map of a dungeon. You will provide
                      written documents regarding the layout of the dungeon, what is in the
                      various rooms. I will provide you with a series of image files for each floor
                      of the dungeon.", google_forms_link: "google.com", caldotcom_link: "cal.com",
                      slot_availabilty: 1, user_id: 1, service_type_id: 2 },
                       { service_offer_name: "City of Waterdeep Research", service_offer_price: 400,
                     service_offer_notes: "I will do research for you regarding something related
                      to the City of Waterdeep within the setting of Forgotten Realms. You will
                      provide me with questions you want answered, I will provide you with answers
                      to your questions.", google_forms_link: "google.com", caldotcom_link: "",
                      slot_availabilty: 4, user_id: 4, service_type_id: 4 },
                       { service_offer_name: "NPC Dialogue", service_offer_price: 500,
                     service_offer_notes: "I will write dialogue for an NPC for you. This can be
                     sample dialogue to help you practice roleplaying, or if you want the NPC to
                     make a speech or have someone overhear a conversation they are having. You will
                     provide me with details regarding the NPC and what, if any, scenes the
                     Dialogue is for. I will provide you with a document containing the text
                     for the dialogue (including notes).", google_forms_link: "google.com",
                      caldotcom_link: "", slot_availabilty: 1, user_id: 4, service_type_id: 8 },
                       { service_offer_name: "Being a better player", service_offer_price: 100,
                     service_offer_notes: "Mentoring on how to be a better player at the table for
                     a TTRPG. This isn't about knowing mechanics or being tactical in combat.
                     These mentoring sessions are about being more polite, mindful, and a better
                     team player.", google_forms_link: "google.com", caldotcom_link: "cal.com",
                     slot_availabilty: 6, user_id: 6, service_type_id: 1 },
                       { service_offer_name: "Character Drawing", service_offer_price: 2500,
                     service_offer_notes: "I will draw your TTRPG character. This can be from any
                     setting (fantasy, sci-fi, cyberpunk, etc etc). You will provide me with
                     detailed information about who they are and what kind of pose you want
                     them to be in. Backgrounds are limited to a single colour (a transparent
                     background variant will be provided). I will provide you with some digital
                     images.", google_forms_link: "google.com", caldotcom_link: "",
                     slot_availabilty: 1, user_id: 1, service_type_id: 6 },
                       { service_offer_name: "How to play 5th Edition D&D",
                       service_offer_price: 1000,
                     service_offer_notes: "I will teach you how to play 5th edition Dungeons and
                     Dragons. I'll go over all the rules for how to run a player character.
                     This is a mechanics focused teaching session. Everything you should need to
                     know to get started will be encapsulated in one session.\r\nYou can provide
                     me with any background knowledge/history you have with TTRPGs.",
                     google_forms_link: "google.com", caldotcom_link: "cal.com",
                     slot_availabilty: 0, user_id: 5, service_type_id: 5 },
                       { service_offer_name: "Designs a Boss Encounter(5e)",
                       service_offer_price: 1500,
                     service_offer_notes: "I will design a Boss Encounter for you for 5th Edition
                     D&D. You will provide me with how many players you have and their
                     levels (you can also provide additional information about the
                     party if you want), you will provide me with a preference on what
                     kind of creature (Humanoid, Giant, Dragon, Elemental, etc etc) or you can
                     be specific and give me a specific creature you want a Boss Encounter
                     designed for (Beholder, Mindflayer, etc etc), and finally you will provide
                     me with a description of the boss encounter's location. I will return to you a
                     document with all the stats and abilities of this Boss and notes on how to
                     run the encounter.", google_forms_link: "google.com",
                     caldotcom_link: "cal.com", slot_availabilty: 0, user_id: 5,
                     service_type_id: 7 }
                     ])

OrderDetail.create!([
                      { time_of_sale_gst: 5000, time_of_sale_hst: 0, time_of_sale_pst: 7000,
                      time_of_sale_qst: 0,
stripe_item_id: nil, user_id: 1 },
                      { time_of_sale_gst: 5000, time_of_sale_hst: 0, time_of_sale_pst: 7000,
                      time_of_sale_qst: 0,
                    stripe_item_id: nil, user_id: 1 },
                      { time_of_sale_gst: 5000, time_of_sale_hst: 0, time_of_sale_pst: 7000,
                      time_of_sale_qst: 0,
                    stripe_item_id: nil, user_id: 1 },
                      { time_of_sale_gst: 5000, time_of_sale_hst: 0, time_of_sale_pst: 7000,
                      time_of_sale_qst: 0,
                    stripe_item_id: nil, user_id: 1 },
                      { time_of_sale_gst: 5000, time_of_sale_hst: 0, time_of_sale_pst: 7000,
                      time_of_sale_qst: 0,
                    stripe_item_id: nil, user_id: 1 },
                      { time_of_sale_gst: 5000, time_of_sale_hst: 0, time_of_sale_pst: 7000,
                      time_of_sale_qst: 0,
                    stripe_item_id: nil, user_id: 1 },
                      { time_of_sale_gst: 5000, time_of_sale_hst: 0, time_of_sale_pst: 0,
                      time_of_sale_qst: 9975,
                    stripe_item_id: nil, user_id: 1 },
                      { time_of_sale_gst: 8000, time_of_sale_hst: 0, time_of_sale_pst: 0,
                      time_of_sale_qst: 9975,
                    stripe_item_id: nil, user_id: 1 },
                      { time_of_sale_gst: 8000, time_of_sale_hst: 0, time_of_sale_pst: 0,
                      time_of_sale_qst: 9975,
                    stripe_item_id: nil, user_id: 1 }
                    ])
Booking.create!([
                  {
                    booking_description: "Mentoring on how to be a better player at the table
                    for a TTRPG. This isn't about knowing mechanics or being tactical in combat.
                      These mentoring sessions are about being more polite, mindful, and a better
                      team player.", google_forms_link: "google.com", caldotcom_link: "cal.com",
                      user_id: 1, service_offer_id: 7
                  },
                  {
                    booking_description: "Mentoring on how to be a better player at the table
                    for a TTRPG. This isn't about knowing mechanics or being tactical in combat.
                      These mentoring sessions are about being more polite, mindful, and a better
                      team player.", google_forms_link: "google.com", caldotcom_link: "cal.com",
                      user_id: 1, service_offer_id: 7
                  },
                  {
                    booking_description: "Mentoring on how to be a better player at the table
                    for a TTRPG. This isn't about knowing mechanics or being tactical in combat.
                      These mentoring sessions are about being more polite, mindful, and a better
                      team player.", google_forms_link: "google.com", caldotcom_link: "cal.com",
                      user_id: 1, service_offer_id: 7
                  },
                  {
                    booking_description: "I will teach you how to play 5th edition Dungeons
                    and Dragons. I'll go over all the rules for how to run a player character.
                    This is a mechanics focused teaching session. Everything you should need to
                    know to get started will be encapsulated in one session.\r\nYou can provide
                    me with any background knowledge/history you have with TTRPGs.",
                    google_forms_link: "google.com", caldotcom_link: "cal.com", user_id: 1,

                    service_offer_id: 9
                  },
                  {
                    booking_description: "I will do research for you regarding something related
                      to the City of Waterdeep within the setting of Forgotten Realms. You will
                      provide me with questions you want answered, I will provide you with
                      answers to your questions.", google_forms_link: "google.com",
                      caldotcom_link: "", user_id: 1, service_offer_id: 5
                  },
                  {
                    booking_description: "I will optimize your 5th Edition D&D Character.
                     You will provide an idea and an already filled in character sheet and I will
                     provide you with a new character sheet that optimizes your character
                     mechanically.", google_forms_link: "google.com", caldotcom_link: "cal.com",
                     user_id: 1, service_offer_id: 2
                  },
                  {
                    booking_description: "I will design a Boss Encounter for you for 5th Edition
                    D&D. You will provide me with how many players you have and their levels
                    (you can also provide additional information about the party if you want),
                    you will provide me with a preference on what kind of creature
                    (Humanoid, Giant, Dragon, Elemental, etc etc) or you can be specific and
                    give me a specific creature you want a Boss Encounter designed for (Beholder,
                    Mindflayer, etc etc), and finally you will provide me with a description of
                    the boss encounter's location. I will return to you a document with all the
                    stats and abilities of this Boss and notes on how to run the encounter.",
                    google_forms_link: "google.com", caldotcom_link: "cal.com", user_id: 1,
                    service_offer_id: 10
                  },
                  {
                    booking_description: "I will write dialogue for an NPC for you. This can be
                    sample dialogue to help you practice roleplaying, or if you want the NPC
                    to make a speech or have someone overhear a conversation they are having.
                    You will provide me with details regarding the NPC and what, if any,
                    scenes the Dialogue is for. I will provide you with a document containing the
                    text for the dialogue (including notes).", google_forms_link: "google.com",
                    caldotcom_link: "", user_id: 1, service_offer_id: 6
                  },
                  {
                    booking_description: "I will teach you how to play 5th edition Dungeons and
                    Dragons. I'll go over all the rules for how to run a player character.
                    This is a mechanics focused teaching session. Everything you should need to
                    know to get started will be encapsulated in one session.\r\nYou can provide me
                    with any background knowledge/history you have with TTRPGs.",
                    google_forms_link: "google.com", caldotcom_link: "cal.com", user_id: 1,
                    service_offer_id: 9
                  },
                  {
                    booking_description: "I will teach you how to play 5th edition Dungeons and
                    Dragons. I'll go over all the rules for how to run a player character.
                    This is a mechanics focused teaching session. Everything you should need to
                    know to get started will be encapsulated in one session.\r\nYou can provide me
                    with any background knowledge/history you have with TTRPGs.",
                    google_forms_link: "google.com", caldotcom_link: "cal.com", user_id: 1,
                    service_offer_id: 9
                  },
                  {
                    booking_description: "I will design a Boss Encounter for you for 5th Edition
                    D&D. You will provide me with how many players you have and their levels
                    (you can also provide additional information about the party if you want),
                    you will provide me with a preference on what kind of creature (Humanoid,
                    Giant, Dragon, Elemental, etc etc) or you can be specific and give me a
                    specific creature you want a Boss Encounter designed for (Beholder,
                    Mindflayer, etc etc), and finally you will provide me with a description
                    of the boss encounter's location. I will return to you a document with
                    all the stats and abilities of this Boss and notes on how to run the
                    encounter.", google_forms_link: "google.com", caldotcom_link: "cal.com",
                    user_id: 1, service_offer_id: 10
                  },
                  {
                    booking_description: "I will design a Boss Encounter for you for 5th Edition
                    D&D. You will provide me with how many players you have and their levels
                    (you can also provide additional information about the party if you want),
                    you will provide me with a preference on what kind of creature (Humanoid,
                    Giant, Dragon, Elemental, etc etc) or you can be specific and give me a
                    specific creature you want a Boss Encounter designed for (Beholder,
                    Mindflayer, etc etc), and finally you will provide me with a description of
                    the boss encounter's location. I will return to you a document with all the
                    stats and abilities of this Boss and notes on how to run the encounter.",
                    google_forms_link: "google.com", caldotcom_link: "cal.com", user_id: 1,
                    service_offer_id: 10
                  },
                  {
                    booking_description: "I will do research for you regarding something related
                      to the City of Waterdeep within the setting of Forgotten Realms. You will
                      provide me with questions you want answered, I will provide you with
                      answers to your questions.", google_forms_link: "google.com",
                      caldotcom_link: "", user_id: 1, service_offer_id: 5
                  },
                  {
                    booking_description: "I will do research for you regarding something related
                      to the City of Waterdeep within the setting of Forgotten Realms.
                      You will provide me with questions you want answered, I will provide you
                      with answers to your questions.", google_forms_link: "google.com",
                      caldotcom_link: "", user_id: 1, service_offer_id: 5
                  },
                  {
                    booking_description: "I will do research for you regarding something related
                      to the City of Waterdeep within the setting of Forgotten Realms.
                      You will provide me with questions you want answered, I will provide you with
                      answers to your questions.", google_forms_link: "google.com",
                      caldotcom_link: "", user_id: 1, service_offer_id: 5
                  },
                  {
                    booking_description: "I will do research for you regarding something related
                      to the City of Waterdeep within the setting of Forgotten Realms.
                      You will provide me with questions you want answered, I will provide you with
                      answers to your questions.", google_forms_link: "google.com",
                      caldotcom_link: "", user_id: 1, service_offer_id: 5
                  },
                  {
                    booking_description: "I will do research for you regarding something related
                      to the City of Waterdeep within the setting of Forgotten Realms.
                      You will provide me with questions you want answered, I will provide you
                      with answers to your questions.", google_forms_link: "google.com",
                      caldotcom_link: "", user_id: 1, service_offer_id: 5
                  },
                  {
                    booking_description: "I will optimize your 5th Edition D&D Character. You will
                    provide an idea and an already filled in character sheet and I will provide
                    you with a new character sheet that optimizes your character mechanically.",
                    google_forms_link: "google.com", caldotcom_link: "cal.com", user_id: 1,
                    service_offer_id: 2
                  },
                  {
                    booking_description: "I will optimize your 5th Edition D&D Character. You will
                    provide an idea and an already filled in character sheet and I will provide
                    you with a new character sheet that optimizes your character mechanically.",
                     google_forms_link: "google.com", caldotcom_link: "cal.com", user_id: 1,
                     service_offer_id: 2
                  },
                  {
                    booking_description: "I will write dialogue for an NPC for you. This can be
                    sample dialogue to help you practice roleplaying, or if you want the NPC to
                    make a speech or have someone overhear a conversation they are having. You
                     will provide me with details regarding the NPC and what, if any, scenes the
                     Dialogue is for. I will provide you with a document containing the text for
                      the dialogue (including notes).", google_forms_link: "google.com",
                      caldotcom_link: "", user_id: 1, service_offer_id: 6
                  }
                ])

OrderItem.create!([
                    { price_before_tax: 100, user_id: 6, service_offer_id: 7, order_detail_id: 40,
                    booking_id: 35,
                  order_item_status_id: 4 },
                    { price_before_tax: 100, user_id: 6, service_offer_id: 7, order_detail_id: 40,
                    booking_id: 36,
                  order_item_status_id: 4 },
                    { price_before_tax: 100, user_id: 6, service_offer_id: 7, order_detail_id: 40,
                    booking_id: 37,
                  order_item_status_id: 4 },
                    { price_before_tax: 1000, user_id: 5, service_offer_id: 9, order_detail_id: 40,
                    booking_id: 38,
                  order_item_status_id: 4 },
                    { price_before_tax: 400, user_id: 4, service_offer_id: 5, order_detail_id: 42,
                    booking_id: 39,
                  order_item_status_id: 4 },
                    { price_before_tax: 600, user_id: 2, service_offer_id: 2, order_detail_id: 43,
                    booking_id: 40,
                  order_item_status_id: 4 },
                    { price_before_tax: 1500, user_id: 5, service_offer_id: 10, order_detail_id: 43,
                    booking_id: 41,
                  order_item_status_id: 4 },
                    { price_before_tax: 500, user_id: 4, service_offer_id: 6, order_detail_id: 44,
                    booking_id: 42,
                  order_item_status_id: 4 },
                    { price_before_tax: 1000, user_id: 5, service_offer_id: 9, order_detail_id: 45,
                    booking_id: 43,
                  order_item_status_id: 4 },
                    { price_before_tax: 1000, user_id: 5, service_offer_id: 9, order_detail_id: 46,
                    booking_id: 44,
                  order_item_status_id: 4 },
                    { price_before_tax: 1500, user_id: 5, service_offer_id: 10, order_detail_id: 46,
                    booking_id: 45,
                  order_item_status_id: 4 },
                    { price_before_tax: 1500, user_id: 5, service_offer_id: 10, order_detail_id: 46,
                    booking_id: 46,
                  order_item_status_id: 4 },
                    { price_before_tax: 400, user_id: 4, service_offer_id: 5, order_detail_id: 47,
                    booking_id: 47,
                  order_item_status_id: 4 },
                    { price_before_tax: 400, user_id: 4, service_offer_id: 5, order_detail_id: 47,
                    booking_id: 48,
                  order_item_status_id: 4 },
                    { price_before_tax: 400, user_id: 4, service_offer_id: 5, order_detail_id: 47,
                    booking_id: 49,
                  order_item_status_id: 4 },
                    { price_before_tax: 400, user_id: 4, service_offer_id: 5, order_detail_id: 47,
                    booking_id: 50,
                  order_item_status_id: 4 },
                    { price_before_tax: 400, user_id: 4, service_offer_id: 5, order_detail_id: 47,
                    booking_id: 51,
                  order_item_status_id: 2 },
                    { price_before_tax: 600, user_id: 2, service_offer_id: 2, order_detail_id: 48,
                    booking_id: 52,
                  order_item_status_id: 4 },
                    { price_before_tax: 600, user_id: 2, service_offer_id: 2, order_detail_id: 48,
                    booking_id: 53,
                  order_item_status_id: 4 },
                    { price_before_tax: 500, user_id: 4, service_offer_id: 6, order_detail_id: 49,
                    booking_id: 54,
                  order_item_status_id: 4 }
                  ])
