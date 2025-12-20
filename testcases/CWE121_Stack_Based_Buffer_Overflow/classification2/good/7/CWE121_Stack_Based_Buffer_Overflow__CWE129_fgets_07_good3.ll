@global_var_b53e0 = external constant [32 x i8]
@global_var_b5400 = external constant [21 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef01c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_186e5:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef01c, align 4
  %2 = icmp eq i32 %1, 5
  br i1 %2, label %dec_label_pc_18763, label %dec_label_pc_1872a

dec_label_pc_1872a:                               ; preds = %dec_label_pc_186e5
  call void @printLine(ptr @global_var_b5400)
  %.pre = load i32, ptr @global_var_ef01c, align 4
  %phitmp = icmp eq i32 %.pre, 5
  %phitmp2 = icmp eq i1 %phitmp, false
  br i1 %phitmp2, label %dec_label_pc_187a4, label %dec_label_pc_18795

dec_label_pc_18763:                               ; preds = %dec_label_pc_186e5
  %3 = ptrtoint ptr %stack_var_-8 to i64
  %4 = add i64 %3, -48
  %5 = add i64 %3, -20
  %6 = inttoptr i64 %5 to ptr
  store i32 1, ptr %6, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_18779

dec_label_pc_18779:                               ; preds = %dec_label_pc_18779, %dec_label_pc_18763
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %7 = mul i64 %indvars.iv.reload, 4
  %8 = add i64 %4, %7
  %9 = inttoptr i64 %8 to ptr
  %10 = load i32, ptr %9, align 4
  call void @printIntLine(i32 %10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_187a4, label %dec_label_pc_18779

dec_label_pc_18795:                               ; preds = %dec_label_pc_1872a
  call void @printLine(ptr @global_var_b53e0)
  br label %dec_label_pc_187a4

dec_label_pc_187a4:                               ; preds = %dec_label_pc_18779, %dec_label_pc_18795, %dec_label_pc_1872a
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_187b9, label %dec_label_pc_187b4

dec_label_pc_187b4:                               ; preds = %dec_label_pc_187a4
  call void @__stack_chk_fail()
  br label %dec_label_pc_187b9

dec_label_pc_187b9:                               ; preds = %dec_label_pc_187b4, %dec_label_pc_187a4
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

