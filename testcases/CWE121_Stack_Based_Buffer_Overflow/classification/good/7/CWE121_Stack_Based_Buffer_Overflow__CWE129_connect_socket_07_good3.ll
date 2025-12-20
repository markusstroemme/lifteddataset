@global_var_b4608 = external constant [32 x i8]
@global_var_b4628 = external constant [21 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef014 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_c648:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef014, align 4
  %2 = icmp eq i32 %1, 5
  br i1 %2, label %dec_label_pc_c6c6, label %dec_label_pc_c68d

dec_label_pc_c68d:                                ; preds = %dec_label_pc_c648
  call void @printLine(ptr @global_var_b4628)
  %.pre = load i32, ptr @global_var_ef014, align 4
  %phitmp = icmp eq i32 %.pre, 5
  %phitmp2 = icmp eq i1 %phitmp, false
  br i1 %phitmp2, label %dec_label_pc_c707, label %dec_label_pc_c6f8

dec_label_pc_c6c6:                                ; preds = %dec_label_pc_c648
  %3 = ptrtoint ptr %stack_var_-8 to i64
  %4 = add i64 %3, -48
  %5 = add i64 %3, -20
  %6 = inttoptr i64 %5 to ptr
  store i32 1, ptr %6, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_c6dc

dec_label_pc_c6dc:                                ; preds = %dec_label_pc_c6dc, %dec_label_pc_c6c6
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %7 = mul i64 %indvars.iv.reload, 4
  %8 = add i64 %4, %7
  %9 = inttoptr i64 %8 to ptr
  %10 = load i32, ptr %9, align 4
  call void @printIntLine(i32 %10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_c707, label %dec_label_pc_c6dc

dec_label_pc_c6f8:                                ; preds = %dec_label_pc_c68d
  call void @printLine(ptr @global_var_b4608)
  br label %dec_label_pc_c707

dec_label_pc_c707:                                ; preds = %dec_label_pc_c6dc, %dec_label_pc_c6f8, %dec_label_pc_c68d
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_c71c, label %dec_label_pc_c717

dec_label_pc_c717:                                ; preds = %dec_label_pc_c707
  call void @__stack_chk_fail()
  br label %dec_label_pc_c71c

dec_label_pc_c71c:                                ; preds = %dec_label_pc_c717, %dec_label_pc_c707
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

