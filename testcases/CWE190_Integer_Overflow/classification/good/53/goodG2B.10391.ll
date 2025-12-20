@global_var_7a994 = external constant [4 x i8]

define void @anon3() local_unnamed_addr {
dec_label_pc_2fda7:
  call void @anon0(i16 2)
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_2fe32:
  call void @anon1(i16 %data)
  ret void
}

define void @anon1(i16 %data) local_unnamed_addr {
dec_label_pc_2fe92:
  call void @anon2(i16 %data)
  ret void
}

define void @anon2(i16 %data) local_unnamed_addr {
dec_label_pc_2ff03:
  %0 = icmp slt i16 %data, 1
  br i1 %0, label %dec_label_pc_2ff31, label %dec_label_pc_2ff1c

dec_label_pc_2ff1c:                               ; preds = %dec_label_pc_2ff03
  %1 = mul i16 %data, 2
  %2 = sext i16 %1 to i32
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_2ff31

dec_label_pc_2ff31:                               ; preds = %dec_label_pc_2ff1c, %dec_label_pc_2ff03
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

