define void @anon1() local_unnamed_addr {
dec_label_pc_3255b:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-27 to ptr
  store i8 0, ptr %1, align 8
  %2 = ptrtoint ptr %stack_var_-27 to i64
  call void @anon0(i64 %2)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_325ae, label %dec_label_pc_325a9

dec_label_pc_325a9:                               ; preds = %dec_label_pc_3255b
  call void @__stack_chk_fail()
  br label %dec_label_pc_325ae

dec_label_pc_325ae:                               ; preds = %dec_label_pc_325a9, %dec_label_pc_3255b
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_3266f:
  %.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call i32 @strlen(ptr nonnull %1)
  %3 = sext i32 %2 to i64
  %4 = add nsw i64 %3, 1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %dec_label_pc_326f6, label %dec_label_pc_326c8.lr.ph

dec_label_pc_326c8.lr.ph:                         ; preds = %dec_label_pc_3266f
  %6 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_326c8

dec_label_pc_326c8:                               ; preds = %dec_label_pc_326c8, %dec_label_pc_326c8.lr.ph
  %.reload = load i64, ptr %.reg2mem, align 8
  %7 = add i64 %.reload, %myStruct
  %8 = add i64 %.reload, %6
  %9 = inttoptr i64 %8 to ptr
  %10 = load i8, ptr %9, align 1
  %11 = inttoptr i64 %7 to ptr
  store i8 %10, ptr %11, align 1
  %12 = add nuw i64 %.reload, 1
  %exitcond = icmp eq i64 %12, %4
  store i64 %12, ptr %.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_326f6, label %dec_label_pc_326c8

dec_label_pc_326f6:                               ; preds = %dec_label_pc_326c8, %dec_label_pc_3266f
  %13 = inttoptr i64 %myStruct to ptr
  call void @printLine(ptr %13)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_32717, label %dec_label_pc_32712

dec_label_pc_32712:                               ; preds = %dec_label_pc_326f6
  call void @__stack_chk_fail()
  br label %dec_label_pc_32717

dec_label_pc_32717:                               ; preds = %dec_label_pc_32712, %dec_label_pc_326f6
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_4ef73:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_4ef96, label %dec_label_pc_4ef8a

dec_label_pc_4ef8a:                               ; preds = %dec_label_pc_4ef73
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_4ef96

dec_label_pc_4ef96:                               ; preds = %dec_label_pc_4ef8a, %dec_label_pc_4ef73
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

