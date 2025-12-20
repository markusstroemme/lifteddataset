@global_var_821d0 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_e4e2:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %. = select i1 %1, i32 2, i32 127
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_e536, label %dec_label_pc_e518

dec_label_pc_e518:                                ; preds = %dec_label_pc_e4e2
  %4 = mul i32 %., 16777216
  %sext = add nuw i32 %4, 16777216
  %5 = udiv i32 %sext, 16777216
  %6 = trunc i32 %5 to i8
  call void @printHexCharLine(i8 %6)
  br label %dec_label_pc_e569

dec_label_pc_e536:                                ; preds = %dec_label_pc_e4e2
  br i1 %1, label %dec_label_pc_e53c, label %dec_label_pc_e55a

dec_label_pc_e53c:                                ; preds = %dec_label_pc_e536
  %7 = mul i32 %., 16777216
  %sext2 = add nuw i32 %7, 16777216
  %8 = udiv i32 %sext2, 16777216
  %9 = trunc i32 %8 to i8
  call void @printHexCharLine(i8 %9)
  br label %dec_label_pc_e569

dec_label_pc_e55a:                                ; preds = %dec_label_pc_e536
  call void @printLine(ptr @global_var_821d0)
  br label %dec_label_pc_e569

dec_label_pc_e569:                                ; preds = %dec_label_pc_e55a, %dec_label_pc_e53c, %dec_label_pc_e518
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6a678:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

