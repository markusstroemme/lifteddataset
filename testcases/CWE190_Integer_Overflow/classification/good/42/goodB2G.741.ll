@global_var_81b28 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_81b20 = external constant [3 x i8]

define i8 @anon0(i8 %data) local_unnamed_addr {
dec_label_pc_b763:
  %0 = load ptr, ptr @global_var_bc0b0, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_81b20)
  ret i8 %data
}

define void @anon1() local_unnamed_addr {
dec_label_pc_b79c:
  %0 = call i8 @anon0(i8 32)
  %1 = icmp eq i8 %0, 127
  br i1 %1, label %dec_label_pc_b7de, label %dec_label_pc_b7c0

dec_label_pc_b7c0:                                ; preds = %dec_label_pc_b79c
  %2 = zext i8 %0 to i32
  %3 = mul i32 %2, 16777216
  %sext = add i32 %3, 16777216
  %4 = udiv i32 %sext, 16777216
  %5 = trunc i32 %4 to i8
  call void @printHexCharLine(i8 %5)
  br label %dec_label_pc_b7ed

dec_label_pc_b7de:                                ; preds = %dec_label_pc_b79c
  call void @printLine(ptr @global_var_81b28)
  br label %dec_label_pc_b7ed

dec_label_pc_b7ed:                                ; preds = %dec_label_pc_b7de, %dec_label_pc_b7c0
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

