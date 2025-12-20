@CWE476_NULL_Pointer_Dereference__struct_22_goodB2G2Global = external local_unnamed_addr global i32
@global_var_48a78 = external constant [13 x i8]
@global_var_4a578 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_19969:
  store i32 1, ptr @CWE476_NULL_Pointer_Dereference__struct_22_goodB2G2Global, align 4
  call void @anon0(ptr null)
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_19a9a:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @CWE476_NULL_Pointer_Dereference__struct_22_goodB2G2Global, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_19ad9, label %dec_label_pc_19ab4

dec_label_pc_19ab4:                               ; preds = %dec_label_pc_19a9a
  %4 = icmp eq ptr %data, null
  br i1 %4, label %dec_label_pc_19aca, label %dec_label_pc_19abb

dec_label_pc_19abb:                               ; preds = %dec_label_pc_19ab4
  %5 = trunc i64 %1 to i32
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_19ad9

dec_label_pc_19aca:                               ; preds = %dec_label_pc_19ab4
  call void @printLine(ptr @global_var_48a78)
  br label %dec_label_pc_19ad9

dec_label_pc_19ad9:                               ; preds = %dec_label_pc_19aca, %dec_label_pc_19abb, %dec_label_pc_19a9a
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

