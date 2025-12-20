@badStatic = external local_unnamed_addr global i32
@global_var_8c32c = external constant [4 x i8]

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_4e598:
  %0 = load i32, ptr @badStatic, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_4e5c4, label %dec_label_pc_4e5b1

dec_label_pc_4e5b1:                               ; preds = %dec_label_pc_4e598
  %2 = mul i32 %data, %data
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_4e5c4

dec_label_pc_4e5c4:                               ; preds = %dec_label_pc_4e5b1, %dec_label_pc_4e598
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_4e5c7:
  store i32 1, ptr @badStatic, align 4
  call void @anon1(i32 2147483647)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

