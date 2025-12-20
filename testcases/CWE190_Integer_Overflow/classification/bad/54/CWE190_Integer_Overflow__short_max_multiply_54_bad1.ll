@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2ff7e:
  call void @anon1(i16 32767)
  ret void
}

define void @anon1(i16 %data) local_unnamed_addr {
dec_label_pc_3000f:
  call void @anon2(i16 %data)
  ret void
}

define void @anon2(i16 %data) local_unnamed_addr {
dec_label_pc_3006f:
  call void @anon3(i16 %data)
  ret void
}

define void @anon3(i16 %data) local_unnamed_addr {
dec_label_pc_300cf:
  call void @anon4(i16 %data)
  ret void
}

define void @anon4(i16 %data) local_unnamed_addr {
dec_label_pc_3012f:
  %0 = icmp slt i16 %data, 1
  br i1 %0, label %dec_label_pc_3015d, label %dec_label_pc_30148

dec_label_pc_30148:                               ; preds = %dec_label_pc_3012f
  %1 = mul i16 %data, 2
  %2 = sext i16 %1 to i32
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_3015d

dec_label_pc_3015d:                               ; preds = %dec_label_pc_30148, %dec_label_pc_3012f
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

