@global_var_87020 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_87016 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_3a46a:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_87016)
  call void @anon0(i64 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_3a4d3, label %dec_label_pc_3a4ce

dec_label_pc_3a4ce:                               ; preds = %dec_label_pc_3a46a
  call void @__stack_chk_fail()
  br label %dec_label_pc_3a4d3

dec_label_pc_3a4d3:                               ; preds = %dec_label_pc_3a4ce, %dec_label_pc_3a46a
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_3a54c:
  %0 = trunc i64 %myStruct to i32
  %1 = icmp eq i32 %0, 2147483647
  br i1 %1, label %dec_label_pc_3a580, label %dec_label_pc_3a56a

dec_label_pc_3a56a:                               ; preds = %dec_label_pc_3a54c
  %2 = add i32 %0, 1
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_3a58f

dec_label_pc_3a580:                               ; preds = %dec_label_pc_3a54c
  call void @printLine(ptr @global_var_87020)
  br label %dec_label_pc_3a58f

dec_label_pc_3a58f:                               ; preds = %dec_label_pc_3a580, %dec_label_pc_3a56a
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

