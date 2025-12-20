@global_var_8c32c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_4bd55:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 2147483647, ptr %stack_var_-20, align 4
  call void @anon1(ptr nonnull %stack_var_-20)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_4bd9f, label %dec_label_pc_4bd9a

dec_label_pc_4bd9a:                               ; preds = %dec_label_pc_4bd55
  call void @__stack_chk_fail()
  br label %dec_label_pc_4bd9f

dec_label_pc_4bd9f:                               ; preds = %dec_label_pc_4bd9a, %dec_label_pc_4bd55
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_4be58:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %dec_label_pc_4be89, label %dec_label_pc_4be77

dec_label_pc_4be77:                               ; preds = %dec_label_pc_4be58
  %4 = mul i32 %2, 2
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_4be89

dec_label_pc_4be89:                               ; preds = %dec_label_pc_4be77, %dec_label_pc_4be58
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

