CREATE TABLE "public"."scrum_cards"("id" bigserial NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "card_value" bpchar, PRIMARY KEY ("id") ); COMMENT ON TABLE "public"."scrum_cards" IS E'Values for game.';