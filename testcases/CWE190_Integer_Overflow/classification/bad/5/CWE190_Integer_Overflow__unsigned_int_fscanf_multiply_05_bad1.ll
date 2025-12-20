@global_var_68090 = external constant [3 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c020 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_13fa4:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_9c020, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_14015, label %dec_label_pc_13ff2

dec_label_pc_13ff2:                               ; preds = %dec_label_pc_13fa4
  %3 = load ptr, ptr @global_var_9c070, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_68090, ptr nonnull %stack_var_-24)
  %.pre = load i32, ptr @global_var_9c020, align 4
  %.pre3 = load i32, ptr %stack_var_-24, align 4
  %phitmp = icmp eq i32 %.pre, 0
  %5 = icmp eq i32 %.pre3, 0
  %or.cond = or i1 %phitmp, %5
  br i1 %or.cond, label %dec_label_pc_14015, label %dec_label_pc_14003

dec_label_pc_14003:                               ; preds = %dec_label_pc_13ff2
  %6 = mul i32 %.pre3, 2
  call void @printUnsignedLine(i32 %6)
  br label %dec_label_pc_14015

dec_label_pc_14015:                               ; preds = %dec_label_pc_13fa4, %dec_label_pc_14003, %dec_label_pc_13ff2
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_1402a, label %dec_label_pc_14025

dec_label_pc_14025:                               ; preds = %dec_label_pc_14015
  call void @__stack_chk_fail()
  br label %dec_label_pc_1402a

dec_label_pc_1402a:                               ; preds = %dec_label_pc_14025, %dec_label_pc_14015
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

