@global_var_95449 = external constant [5 x i8]
@global_var_c3194 = external local_unnamed_addr global i32

define void @anon1(i64 %data) local_unnamed_addr {
dec_label_pc_19e8c:
  %0 = load i32, ptr @global_var_c3194, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_19ebe, label %dec_label_pc_19ea6

dec_label_pc_19ea6:                               ; preds = %dec_label_pc_19e8c
  %2 = mul i64 %data, %data
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_19ebe

dec_label_pc_19ebe:                               ; preds = %dec_label_pc_19ea6, %dec_label_pc_19e8c
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_19ec1:
  store i32 1, ptr @global_var_c3194, align 4
  call void @anon1(i64 9223372036854775807)
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

