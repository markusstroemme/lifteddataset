@global_var_8ca7c = external constant [4 x i8]
@global_var_bc3e4 = external local_unnamed_addr global i32

define void @anon1(i16 %data) local_unnamed_addr {
dec_label_pc_55053:
  %0 = load i32, ptr @global_var_bc3e4, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_5508d, label %dec_label_pc_5506f

dec_label_pc_5506f:                               ; preds = %dec_label_pc_55053
  %2 = add i16 %data, 1
  %3 = sext i16 %2 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_5508d

dec_label_pc_5508d:                               ; preds = %dec_label_pc_5506f, %dec_label_pc_55053
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_55090:
  store i32 1, ptr @global_var_bc3e4, align 4
  call void @anon1(i16 32767)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca7c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

