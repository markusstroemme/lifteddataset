@global_var_8bcc8 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]

define void @anon4() local_unnamed_addr {
dec_label_pc_642b6:
  call void @anon0(i32 -1)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_64334:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_64388:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_643dc:
  call void @anon3(i32 %data)
  ret void
}

define void @anon3(i32 %data) local_unnamed_addr {
dec_label_pc_64444:
  %0 = icmp eq i32 %data, -1
  br i1 %0, label %dec_label_pc_6446f, label %dec_label_pc_64459

dec_label_pc_64459:                               ; preds = %dec_label_pc_64444
  %1 = add i32 %data, 1
  call void @printUnsignedLine(i32 %1)
  br label %dec_label_pc_6447e

dec_label_pc_6446f:                               ; preds = %dec_label_pc_64444
  call void @printLine(ptr @global_var_8bcc8)
  br label %dec_label_pc_6447e

dec_label_pc_6447e:                               ; preds = %dec_label_pc_6446f, %dec_label_pc_64459
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

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

