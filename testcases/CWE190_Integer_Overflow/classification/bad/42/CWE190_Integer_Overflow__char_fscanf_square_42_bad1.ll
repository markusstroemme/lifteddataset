@global_var_76cf3 = external constant [6 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr
@global_var_6d720 = external constant [3 x i8]

define i8 @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_171bc:
  %0 = load ptr, ptr @global_var_a5080, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_6d720)
  ret i8 %data
}

define void @anon0() local_unnamed_addr {
dec_label_pc_171f5:
  %0 = call i8 @anon1(i8 32)
  %1 = mul i8 %0, %0
  call void @printHexCharLine(i8 %1)
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

