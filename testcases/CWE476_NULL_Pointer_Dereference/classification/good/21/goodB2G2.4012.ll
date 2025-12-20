@global_var_483ba = external constant [13 x i8]
@global_var_4a578 = external constant [4 x i8]
@global_var_6d12c = external local_unnamed_addr global i32

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_10ef1:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_6d12c, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_10f30, label %dec_label_pc_10f0b

dec_label_pc_10f0b:                               ; preds = %dec_label_pc_10ef1
  %4 = icmp eq ptr %data, null
  br i1 %4, label %dec_label_pc_10f21, label %dec_label_pc_10f12

dec_label_pc_10f12:                               ; preds = %dec_label_pc_10f0b
  %5 = trunc i64 %1 to i32
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_10f30

dec_label_pc_10f21:                               ; preds = %dec_label_pc_10f0b
  call void @printLine(ptr @global_var_483ba)
  br label %dec_label_pc_10f30

dec_label_pc_10f30:                               ; preds = %dec_label_pc_10f21, %dec_label_pc_10f12, %dec_label_pc_10ef1
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_10f33:
  store i32 1, ptr @global_var_6d12c, align 4
  call void @anon0(ptr null)
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3cb2f:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3cb52, label %dec_label_pc_3cb46

dec_label_pc_3cb46:                               ; preds = %dec_label_pc_3cb2f
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3cb52

dec_label_pc_3cb52:                               ; preds = %dec_label_pc_3cb46, %dec_label_pc_3cb2f
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

