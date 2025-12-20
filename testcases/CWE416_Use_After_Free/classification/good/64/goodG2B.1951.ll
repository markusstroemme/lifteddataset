@global_var_4a944 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_e71b:
  %.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 400)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-32, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_e769.preheader, label %dec_label_pc_e755

dec_label_pc_e769.preheader:                      ; preds = %dec_label_pc_e71b
  %5 = bitcast ptr %1 to ptr
  store i32 5, ptr %5, align 4
  store i64 1, ptr %.reg2mem, align 8
  br label %dec_label_pc_e769.dec_label_pc_e769_crit_edge

dec_label_pc_e755:                                ; preds = %dec_label_pc_e71b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_e769.dec_label_pc_e769_crit_edge:    ; preds = %dec_label_pc_e769.preheader, %dec_label_pc_e769.dec_label_pc_e769_crit_edge
  %.reload = load i64, ptr %.reg2mem, align 8
  %.pre = load i64, ptr %stack_var_-32, align 8
  %6 = mul i64 %.reload, 4
  %7 = add i64 %6, %.pre
  %8 = inttoptr i64 %7 to ptr
  store i32 5, ptr %8, align 4
  %9 = add nuw nsw i64 %.reload, 1
  %exitcond = icmp eq i64 %9, 100
  store i64 %9, ptr %.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_e78a, label %dec_label_pc_e769.dec_label_pc_e769_crit_edge

dec_label_pc_e78a:                                ; preds = %dec_label_pc_e769.dec_label_pc_e769_crit_edge
  %10 = bitcast ptr %stack_var_-32 to ptr
  call void @anon0(ptr nonnull %10)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_e7ab, label %dec_label_pc_e7a6

dec_label_pc_e7a6:                                ; preds = %dec_label_pc_e78a
  call void @__stack_chk_fail()
  br label %dec_label_pc_e7ab

dec_label_pc_e7ab:                                ; preds = %dec_label_pc_e7a6, %dec_label_pc_e78a
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_e89d:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  call void @printIntLine(i32 %2)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

