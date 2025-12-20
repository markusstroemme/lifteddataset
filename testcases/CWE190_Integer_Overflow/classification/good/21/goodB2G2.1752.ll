@global_var_823a0 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc0f4 = external local_unnamed_addr global i32

define void @anon0(i8 %data) local_unnamed_addr {
dec_label_pc_efcb:
  %0 = load i32, ptr @global_var_bc0f4, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_f019, label %dec_label_pc_efe6

dec_label_pc_efe6:                                ; preds = %dec_label_pc_efcb
  %2 = icmp eq i8 %data, 127
  br i1 %2, label %dec_label_pc_f00a, label %dec_label_pc_efec

dec_label_pc_efec:                                ; preds = %dec_label_pc_efe6
  %3 = add i8 %data, 1
  call void @printHexCharLine(i8 %3)
  br label %dec_label_pc_f019

dec_label_pc_f00a:                                ; preds = %dec_label_pc_efe6
  call void @printLine(ptr @global_var_823a0)
  br label %dec_label_pc_f019

dec_label_pc_f019:                                ; preds = %dec_label_pc_f00a, %dec_label_pc_efec, %dec_label_pc_efcb
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_f01c:
  store i32 1, ptr @global_var_bc0f4, align 4
  call void @anon0(i8 127)
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

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

