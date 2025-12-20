@global_var_72470 = external constant [4 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9070 = external local_unnamed_addr global i32
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_201d3:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_a9070, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_20248, label %dec_label_pc_20220

dec_label_pc_20220:                               ; preds = %dec_label_pc_201d3
  %3 = load ptr, ptr @global_var_a9080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_72470, ptr nonnull %stack_var_-20)
  %.pre = load i32, ptr @global_var_a9070, align 4
  %.pre2 = load i16, ptr %stack_var_-20, align 2
  %phitmp = icmp eq i32 %.pre, 0
  %5 = icmp slt i16 %.pre2, 1
  %or.cond = or i1 %phitmp, %5
  br i1 %or.cond, label %dec_label_pc_20248, label %dec_label_pc_20233

dec_label_pc_20233:                               ; preds = %dec_label_pc_20220
  %6 = mul i16 %.pre2, 2
  %7 = sext i16 %6 to i32
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_20248

dec_label_pc_20248:                               ; preds = %dec_label_pc_201d3, %dec_label_pc_20233, %dec_label_pc_20220
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_2025d, label %dec_label_pc_20258

dec_label_pc_20258:                               ; preds = %dec_label_pc_20248
  call void @__stack_chk_fail()
  br label %dec_label_pc_2025d

dec_label_pc_2025d:                               ; preds = %dec_label_pc_20258, %dec_label_pc_20248
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

