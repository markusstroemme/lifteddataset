@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2461f:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-20, align 4
  %1 = bitcast ptr %stack_var_-20 to ptr
  call void @anon1(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_24669, label %dec_label_pc_24664

dec_label_pc_24664:                               ; preds = %dec_label_pc_2461f
  call void @__stack_chk_fail()
  br label %dec_label_pc_24669

dec_label_pc_24669:                               ; preds = %dec_label_pc_24664, %dec_label_pc_2461f
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_24722:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_2475b, label %dec_label_pc_24749

dec_label_pc_24749:                               ; preds = %dec_label_pc_24722
  %4 = mul i32 %2, 2
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_2475b

dec_label_pc_2475b:                               ; preds = %dec_label_pc_24749, %dec_label_pc_24722
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

