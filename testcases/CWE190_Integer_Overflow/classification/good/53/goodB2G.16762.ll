@global_var_89f40 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon3() local_unnamed_addr {
dec_label_pc_56130:
  call void @anon0(i16 32767)
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_561b5:
  call void @anon1(i16 %data)
  ret void
}

define void @anon1(i16 %data) local_unnamed_addr {
dec_label_pc_56215:
  call void @anon2(i16 %data)
  ret void
}

define void @anon2(i16 %data) local_unnamed_addr {
dec_label_pc_5629b:
  %0 = icmp eq i16 %data, 32767
  br i1 %0, label %dec_label_pc_562d5, label %dec_label_pc_562b5

dec_label_pc_562b5:                               ; preds = %dec_label_pc_5629b
  %1 = add i16 %data, 1
  %2 = sext i16 %1 to i32
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_562e4

dec_label_pc_562d5:                               ; preds = %dec_label_pc_5629b
  call void @printLine(ptr @global_var_89f40)
  br label %dec_label_pc_562e4

dec_label_pc_562e4:                               ; preds = %dec_label_pc_562d5, %dec_label_pc_562b5
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

