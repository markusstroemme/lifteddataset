@global_var_724c8 = external constant [4 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_20498:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_204e9, label %dec_label_pc_204c7

dec_label_pc_204c7:                               ; preds = %dec_label_pc_20498
  %3 = load ptr, ptr @global_var_a9080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_724c8, ptr nonnull %stack_var_-20)
  br label %dec_label_pc_204e9

dec_label_pc_204e9:                               ; preds = %dec_label_pc_204c7, %dec_label_pc_20498
  %5 = call i32 @globalReturnsTrue()
  %6 = icmp eq i32 %5, 0
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = icmp slt i16 %7, 1
  %or.cond = or i1 %6, %8
  br i1 %or.cond, label %dec_label_pc_20515, label %dec_label_pc_20500

dec_label_pc_20500:                               ; preds = %dec_label_pc_204e9
  %9 = mul i16 %7, 2
  %10 = sext i16 %9 to i32
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_20515

dec_label_pc_20515:                               ; preds = %dec_label_pc_20500, %dec_label_pc_204e9
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_2052a, label %dec_label_pc_20525

dec_label_pc_20525:                               ; preds = %dec_label_pc_20515
  call void @__stack_chk_fail()
  br label %dec_label_pc_2052a

dec_label_pc_2052a:                               ; preds = %dec_label_pc_20525, %dec_label_pc_20515
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_5e30b:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

