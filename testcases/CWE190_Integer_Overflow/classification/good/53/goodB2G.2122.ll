@global_var_82620 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]

define void @anon3() local_unnamed_addr {
dec_label_pc_fe88:
  call void @anon0(i8 127)
  ret void
}

define void @anon0(i8 %data) local_unnamed_addr {
dec_label_pc_ff07:
  call void @anon1(i8 %data)
  ret void
}

define void @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_ff64:
  call void @anon2(i8 %data)
  ret void
}

define void @anon2(i8 %data) local_unnamed_addr {
dec_label_pc_ffe3:
  %0 = icmp eq i8 %data, 127
  br i1 %0, label %dec_label_pc_10018, label %dec_label_pc_fffa

dec_label_pc_fffa:                                ; preds = %dec_label_pc_ffe3
  %1 = add i8 %data, 1
  call void @printHexCharLine(i8 %1)
  br label %dec_label_pc_10027

dec_label_pc_10018:                               ; preds = %dec_label_pc_ffe3
  call void @printLine(ptr @global_var_82620)
  br label %dec_label_pc_10027

dec_label_pc_10027:                               ; preds = %dec_label_pc_10018, %dec_label_pc_fffa
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

