@global_var_76cf3 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1fb7a:
  call void @anon1(i64 127)
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_1fc14:
  %0 = trunc i64 %myStruct to i8
  %1 = icmp slt i8 %0, 1
  br i1 %1, label %dec_label_pc_1fc45, label %dec_label_pc_1fc31

dec_label_pc_1fc31:                               ; preds = %dec_label_pc_1fc14
  %2 = mul i8 %0, 2
  call void @printHexCharLine(i8 %2)
  br label %dec_label_pc_1fc45

dec_label_pc_1fc45:                               ; preds = %dec_label_pc_1fc31, %dec_label_pc_1fc14
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

