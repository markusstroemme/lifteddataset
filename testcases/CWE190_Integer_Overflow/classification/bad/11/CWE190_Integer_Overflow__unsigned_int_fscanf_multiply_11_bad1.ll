@global_var_68278 = external constant [3 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_15032:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_15084, label %dec_label_pc_15062

dec_label_pc_15062:                               ; preds = %dec_label_pc_15032
  %3 = load ptr, ptr @global_var_9c070, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_68278, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_15084

dec_label_pc_15084:                               ; preds = %dec_label_pc_15062, %dec_label_pc_15032
  %5 = call i32 @globalReturnsTrue()
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr %stack_var_-24, align 4
  %8 = icmp eq i32 %7, 0
  %or.cond = or i1 %6, %8
  br i1 %or.cond, label %dec_label_pc_150ab, label %dec_label_pc_15099

dec_label_pc_15099:                               ; preds = %dec_label_pc_15084
  %9 = mul i32 %7, 2
  call void @printUnsignedLine(i32 %9)
  br label %dec_label_pc_150ab

dec_label_pc_150ab:                               ; preds = %dec_label_pc_15099, %dec_label_pc_15084
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_150c0, label %dec_label_pc_150bb

dec_label_pc_150bb:                               ; preds = %dec_label_pc_150ab
  call void @__stack_chk_fail()
  br label %dec_label_pc_150c0

dec_label_pc_150c0:                               ; preds = %dec_label_pc_150bb, %dec_label_pc_150ab
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_550e7:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

