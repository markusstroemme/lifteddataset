@global_var_68cc8 = external constant [3 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1a137:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1a189, label %dec_label_pc_1a167

dec_label_pc_1a167:                               ; preds = %dec_label_pc_1a137
  %3 = load ptr, ptr @global_var_9c070, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_68cc8, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_1a189

dec_label_pc_1a189:                               ; preds = %dec_label_pc_1a167, %dec_label_pc_1a137
  %5 = call i32 @globalReturnsTrue()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_1a1ad, label %dec_label_pc_1a197

dec_label_pc_1a197:                               ; preds = %dec_label_pc_1a189
  %7 = load i32, ptr %stack_var_-24, align 4
  %8 = mul i32 %7, %7
  call void @printUnsignedLine(i32 %8)
  br label %dec_label_pc_1a1ad

dec_label_pc_1a1ad:                               ; preds = %dec_label_pc_1a197, %dec_label_pc_1a189
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_1a1c2, label %dec_label_pc_1a1bd

dec_label_pc_1a1bd:                               ; preds = %dec_label_pc_1a1ad
  call void @__stack_chk_fail()
  br label %dec_label_pc_1a1c2

dec_label_pc_1a1c2:                               ; preds = %dec_label_pc_1a1bd, %dec_label_pc_1a1ad
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

