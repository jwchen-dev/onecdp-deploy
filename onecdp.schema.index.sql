ALTER TABLE public.platform_account ADD CONSTRAINT platform_account_pk PRIMARY KEY (id);
ALTER TABLE public.platform_account ADD CONSTRAINT platform_account_unique UNIQUE (email);

ALTER TABLE public.global_config ADD CONSTRAINT global_config_pk PRIMARY KEY (id);

ALTER TABLE public."groups" ADD CONSTRAINT groups_pk PRIMARY KEY (group_id);

ALTER TABLE public.group_view_rule ADD CONSTRAINT group_view_rule_pk PRIMARY KEY (group_view_id);

ALTER TABLE public.group_config ADD CONSTRAINT group_config_pk PRIMARY KEY (group_id);

ALTER TABLE public.merchants ADD CONSTRAINT merchants_pk PRIMARY KEY (merchant_id);

ALTER TABLE public.merchant_config ADD CONSTRAINT merchant_config_pk PRIMARY KEY (merchant_id);

ALTER TABLE public.accounts ADD CONSTRAINT accounts_pk PRIMARY KEY (account_id);

ALTER TABLE public.sources ADD CONSTRAINT sources_pk PRIMARY KEY (data_source_id);

ALTER TABLE public.partner ADD CONSTRAINT partner_pk PRIMARY KEY (partner_id);

ALTER TABLE public.partner_key ADD CONSTRAINT partner_key_pk PRIMARY KEY (partner_key_id);
Alter TABLE public.partner_key ADD CONSTRAINT partner_id_fk FOREIGN KEY (partner_id)
        REFERENCES public.partner (partner_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
        NOT VALID;

ALTER TABLE public.merchant_token ADD CONSTRAINT merchant_token_pk PRIMARY KEY (merchant_token_id);
ALTER TABLE public.merchant_token ADD CONSTRAINT partner_id_fk FOREIGN KEY (partner_id)
    REFERENCES public.partner (partner_id) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE NO ACTION
    NOT VALID;
ALTER TABLE public.merchant_token ADD CONSTRAINT group_id_fk FOREIGN KEY (group_id)
    REFERENCES public.groups (group_id) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE NO ACTION
    NOT VALID;

ALTER TABLE public.mm_statistic ADD CONSTRAINT merchant_member_id_pk PRIMARY KEY (merchant_member_id);

ALTER TABLE public.gm_statistic ADD CONSTRAINT gm_statistic_id_pk PRIMARY KEY (gm_statistic_id);

ALTER TABLE public.products_statistic ADD CONSTRAINT product_id_pk PRIMARY KEY (product_id);

ALTER TABLE public.segments_basic ADD CONSTRAINT segment_id_pk PRIMARY KEY (segment_id);

ALTER TABLE public.segment_advanced ADD CONSTRAINT sa_segment_id_pk PRIMARY KEY (segment_id);

ALTER TABLE public.m_daily_statistic ADD CONSTRAINT mds_pk PRIMARY KEY (merchant_statistic_id,calculate_date);

ALTER TABLE public.g_daily_statistic ADD CONSTRAINT gds_pk PRIMARY KEY (gm_statistic_id,calculate_date);

ALTER TABLE public.segments_download ADD CONSTRAINT segment_download_id_pk PRIMARY KEY (segment_download_id);

ALTER TABLE public.file_upload_records ADD CONSTRAINT file_import_record_id_pk PRIMARY KEY (file_import_record_id);

ALTER TABLE public.merchant_recommendations  ADD CONSTRAINT merchant_model_id_pkey PRIMARY KEY (merchant_model_id);
CREATE INDEX idx_insert_time_on_merchant_recommendations ON public.merchant_recommendations USING btree (insert_time);
CREATE INDEX idx_merchant_id_on_merchant_recommendations ON public.merchant_recommendations USING btree (merchant_id);
CREATE INDEX idx_merchant_name_on_merchant_recommendations ON public.merchant_recommendations USING btree (model_name);
CREATE INDEX idx_merchant_version_on_merchant_recommendations ON public.merchant_recommendations USING btree (model_version);
CREATE INDEX idx_modified_time_on_merchant_recommendations ON public.merchant_recommendations USING btree (modified_time);
CREATE INDEX idx_score_type_on_merchant_recommendations ON public.merchant_recommendations USING btree (score_type);