@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_690a0 = external constant [3 x i8]

define i32 @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_1bec9:
  %0 = load ptr, ptr @global_var_9c070, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_690a0)
  ret i32 %data
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1beff:
  %0 = call i32 @anon1(i32 0)
  %1 = mul i32 %0, %0
  call void @printUnsignedLine(i32 %1)
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

