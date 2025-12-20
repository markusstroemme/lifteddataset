@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2fd81:
  call void @anon1(i16 32767)
  ret void
}

define void @anon1(i16 %data) local_unnamed_addr {
dec_label_pc_2fe12:
  call void @anon2(i16 %data)
  ret void
}

define void @anon2(i16 %data) local_unnamed_addr {
dec_label_pc_2fe72:
  call void @anon3(i16 %data)
  ret void
}

define void @anon3(i16 %data) local_unnamed_addr {
dec_label_pc_2fed2:
  %0 = icmp slt i16 %data, 1
  br i1 %0, label %dec_label_pc_2ff00, label %dec_label_pc_2feeb

dec_label_pc_2feeb:                               ; preds = %dec_label_pc_2fed2
  %1 = mul i16 %data, 2
  %2 = sext i16 %1 to i32
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_2ff00

dec_label_pc_2ff00:                               ; preds = %dec_label_pc_2feeb, %dec_label_pc_2fed2
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

