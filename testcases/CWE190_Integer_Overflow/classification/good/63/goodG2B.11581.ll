@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_32527:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 2, ptr %stack_var_-20, align 4
  call void @anon0(ptr nonnull %stack_var_-20)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_32571, label %dec_label_pc_3256c

dec_label_pc_3256c:                               ; preds = %dec_label_pc_32527
  call void @__stack_chk_fail()
  br label %dec_label_pc_32571

dec_label_pc_32571:                               ; preds = %dec_label_pc_3256c, %dec_label_pc_32527
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_32659:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_3268a, label %dec_label_pc_32678

dec_label_pc_32678:                               ; preds = %dec_label_pc_32659
  %4 = mul i32 %2, 2
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_3268a

dec_label_pc_3268a:                               ; preds = %dec_label_pc_32678, %dec_label_pc_32659
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

