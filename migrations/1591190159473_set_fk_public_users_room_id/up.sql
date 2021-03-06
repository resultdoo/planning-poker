alter table "public"."users"
           add constraint "users_room_id_fkey"
           foreign key ("room_id")
           references "public"."rooms"
           ("id") on update restrict on delete cascade;
