@global_var_8b198 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_8b190 = external constant [3 x i8]

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_5fc88:
  %0 = load ptr, ptr @global_var_bc0b0, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_8b190)
  ret i32 %data
}

define void @anon1() local_unnamed_addr {
dec_label_pc_5fcbe:
  %0 = call i32 @anon0(i32 0)
  %1 = icmp eq i32 %0, -1
  br i1 %1, label %dec_label_pc_5fcfa, label %dec_label_pc_5fce4

dec_label_pc_5fce4:                               ; preds = %dec_label_pc_5fcbe
  %2 = add i32 %0, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_5fd09

dec_label_pc_5fcfa:                               ; preds = %dec_label_pc_5fcbe
  call void @printLine(ptr @global_var_8b198)
  br label %dec_label_pc_5fd09

dec_label_pc_5fd09:                               ; preds = %dec_label_pc_5fcfa, %dec_label_pc_5fce4
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

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

