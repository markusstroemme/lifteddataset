@global_var_89cc0 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc3ec = external local_unnamed_addr global i32

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_55157:
  %0 = load i32, ptr @global_var_bc3ec, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_551aa, label %dec_label_pc_55173

dec_label_pc_55173:                               ; preds = %dec_label_pc_55157
  %2 = icmp eq i16 %data, 32767
  br i1 %2, label %dec_label_pc_5519b, label %dec_label_pc_5517b

dec_label_pc_5517b:                               ; preds = %dec_label_pc_55173
  %3 = add i16 %data, 1
  %4 = sext i16 %3 to i32
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_551aa

dec_label_pc_5519b:                               ; preds = %dec_label_pc_55173
  call void @printLine(ptr @global_var_89cc0)
  br label %dec_label_pc_551aa

dec_label_pc_551aa:                               ; preds = %dec_label_pc_5519b, %dec_label_pc_5517b, %dec_label_pc_55157
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_551ad:
  store i32 1, ptr @global_var_bc3ec, align 4
  call void @anon0(i16 32767)
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

