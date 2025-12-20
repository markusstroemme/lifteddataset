@badStatic = external local_unnamed_addr global i32
@global_var_4a578 = external constant [4 x i8]

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_19718:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @badStatic, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_1973f, label %dec_label_pc_19732

dec_label_pc_19732:                               ; preds = %dec_label_pc_19718
  %4 = trunc i64 %1 to i32
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_1973f

dec_label_pc_1973f:                               ; preds = %dec_label_pc_19732, %dec_label_pc_19718
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_19742:
  store i32 1, ptr @badStatic, align 4
  call void @anon1(ptr null)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

