@global_var_72110 = external constant [4 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr
@global_var_a5070 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_38360:
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = load i32, ptr @global_var_a5070, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_383d9, label %dec_label_pc_383af

dec_label_pc_383af:                               ; preds = %dec_label_pc_38360
  %3 = load ptr, ptr @global_var_a5080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_72110, ptr nonnull %stack_var_-32)
  %.pre = load i32, ptr @global_var_a5070, align 4
  %.pre2 = load i64, ptr %stack_var_-32, align 8
  %phitmp = icmp eq i32 %.pre, 0
  %5 = icmp slt i64 %.pre2, 1
  %or.cond = or i1 %phitmp, %5
  br i1 %or.cond, label %dec_label_pc_383d9, label %dec_label_pc_383c2

dec_label_pc_383c2:                               ; preds = %dec_label_pc_383af
  %6 = mul i64 %.pre2, 2
  call void @printLongLongLine(i64 %6)
  br label %dec_label_pc_383d9

dec_label_pc_383d9:                               ; preds = %dec_label_pc_38360, %dec_label_pc_383c2, %dec_label_pc_383af
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_383ee, label %dec_label_pc_383e9

dec_label_pc_383e9:                               ; preds = %dec_label_pc_383d9
  call void @__stack_chk_fail()
  br label %dec_label_pc_383ee

dec_label_pc_383ee:                               ; preds = %dec_label_pc_383e9, %dec_label_pc_383d9
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_5a132:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76ce9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

