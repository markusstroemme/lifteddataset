@global_var_320 = external constant [20 x i8]
@global_var_4a96e = external constant [10 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_154fb:
  %.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-32, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_15549.preheader, label %dec_label_pc_15535

dec_label_pc_15549.preheader:                     ; preds = %dec_label_pc_154fb
  %5 = bitcast ptr %1 to ptr
  store i32 1, ptr %5, align 4
  %6 = load i64, ptr %stack_var_-32, align 8
  %7 = add i64 %6, 4
  %8 = inttoptr i64 %7 to ptr
  store i32 2, ptr %8, align 4
  store i64 1, ptr %.reg2mem, align 8
  br label %dec_label_pc_15549.dec_label_pc_15549_crit_edge

dec_label_pc_15535:                               ; preds = %dec_label_pc_154fb
  call void @exit(i32 -1)
  unreachable

dec_label_pc_15549.dec_label_pc_15549_crit_edge:  ; preds = %dec_label_pc_15549.preheader, %dec_label_pc_15549.dec_label_pc_15549_crit_edge
  %.reload = load i64, ptr %.reg2mem, align 8
  %.pre = load i64, ptr %stack_var_-32, align 8
  %9 = mul i64 %.reload, 8
  %10 = add i64 %9, %.pre
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  %12 = load i64, ptr %stack_var_-32, align 8
  %13 = or i64 %9, 4
  %14 = add i64 %13, %12
  %15 = inttoptr i64 %14 to ptr
  store i32 2, ptr %15, align 4
  %16 = add nuw nsw i64 %.reload, 1
  %exitcond = icmp eq i64 %16, 100
  store i64 %16, ptr %.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_15580, label %dec_label_pc_15549.dec_label_pc_15549_crit_edge

dec_label_pc_15580:                               ; preds = %dec_label_pc_15549.dec_label_pc_15549_crit_edge
  %17 = bitcast ptr %stack_var_-32 to ptr
  call void @anon0(ptr nonnull %17)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %0, %18
  br i1 %19, label %dec_label_pc_155a1, label %dec_label_pc_1559c

dec_label_pc_1559c:                               ; preds = %dec_label_pc_15580
  call void @__stack_chk_fail()
  br label %dec_label_pc_155a1

dec_label_pc_155a1:                               ; preds = %dec_label_pc_1559c, %dec_label_pc_15580
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_156a0:
  %0 = bitcast ptr %dataPtr to ptr
  call void @printStructLine(ptr %0)
  ret void
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_3ba96:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_4a96e, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

