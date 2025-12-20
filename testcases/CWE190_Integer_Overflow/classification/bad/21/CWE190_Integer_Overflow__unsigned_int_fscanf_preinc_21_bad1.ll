@global_var_8afe8 = external constant [3 x i8]
@global_var_8c83e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc444 = external local_unnamed_addr global i32

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_5f02d:
  %0 = load i32, ptr @global_var_bc444, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_5f05a, label %dec_label_pc_5f046

dec_label_pc_5f046:                               ; preds = %dec_label_pc_5f02d
  %2 = add i32 %data, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_5f05a

dec_label_pc_5f05a:                               ; preds = %dec_label_pc_5f046, %dec_label_pc_5f02d
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_5f05d:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_8afe8, ptr nonnull %stack_var_-20)
  store i32 1, ptr @global_var_bc444, align 4
  %3 = load i32, ptr %stack_var_-20, align 4
  call void @anon1(i32 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_5f0ca, label %dec_label_pc_5f0c5

dec_label_pc_5f0c5:                               ; preds = %dec_label_pc_5f05d
  call void @__stack_chk_fail()
  br label %dec_label_pc_5f0ca

dec_label_pc_5f0ca:                               ; preds = %dec_label_pc_5f0c5, %dec_label_pc_5f05d
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

