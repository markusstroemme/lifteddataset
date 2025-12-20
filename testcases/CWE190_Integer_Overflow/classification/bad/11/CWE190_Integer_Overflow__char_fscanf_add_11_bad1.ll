@global_var_6bea8 = external constant [3 x i8]
@global_var_76cf3 = external constant [6 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_b3ca:
  %stack_var_-18 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-18, align 1
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_b419, label %dec_label_pc_b3f7

dec_label_pc_b3f7:                                ; preds = %dec_label_pc_b3ca
  %3 = load ptr, ptr @global_var_a5080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_6bea8, ptr nonnull %stack_var_-18)
  br label %dec_label_pc_b419

dec_label_pc_b419:                                ; preds = %dec_label_pc_b3f7, %dec_label_pc_b3ca
  %5 = call i32 @globalReturnsTrue()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_b43c, label %dec_label_pc_b427

dec_label_pc_b427:                                ; preds = %dec_label_pc_b419
  %7 = load i8, ptr %stack_var_-18, align 1
  %8 = add i8 %7, 1
  call void @printHexCharLine(i8 %8)
  br label %dec_label_pc_b43c

dec_label_pc_b43c:                                ; preds = %dec_label_pc_b427, %dec_label_pc_b419
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_b451, label %dec_label_pc_b44c

dec_label_pc_b44c:                                ; preds = %dec_label_pc_b43c
  call void @__stack_chk_fail()
  br label %dec_label_pc_b451

dec_label_pc_b451:                                ; preds = %dec_label_pc_b44c, %dec_label_pc_b43c
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_5a524:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

