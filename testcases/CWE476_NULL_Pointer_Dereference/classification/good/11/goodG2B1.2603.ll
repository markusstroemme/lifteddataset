@global_var_48022 = external constant [21 x i8]
@global_var_4a585 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_c95a:
  %stack_var_-24.0.reg2mem = alloca i64, align 8
  %data_-32 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr inttoptr (i64 5 to ptr), ptr %data_-32, align 8
  %1 = call i32 @globalReturnsFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_c99c, label %dec_label_pc_c98b

dec_label_pc_c98b:                                ; preds = %dec_label_pc_c95a
  call void @printLine(ptr @global_var_48022)
  br label %dec_label_pc_c9a4

dec_label_pc_c99c:                                ; preds = %dec_label_pc_c95a
  %3 = ptrtoint ptr %data_-32 to i64
  store i64 %3, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_c9a4

dec_label_pc_c9a4:                                ; preds = %dec_label_pc_c99c, %dec_label_pc_c98b
  %4 = call i32 @globalReturnsTrue()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_c9c1, label %dec_label_pc_c9b2

dec_label_pc_c9b2:                                ; preds = %dec_label_pc_c9a4
  %stack_var_-24.0.reload = load i64, ptr %stack_var_-24.0.reg2mem, align 8
  %6 = inttoptr i64 %stack_var_-24.0.reload to ptr
  %7 = load i64, ptr %6, align 8
  call void @printLongLongLine(i64 %7)
  br label %dec_label_pc_c9c1

dec_label_pc_c9c1:                                ; preds = %dec_label_pc_c9b2, %dec_label_pc_c9a4
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_c9d6, label %dec_label_pc_c9d1

dec_label_pc_c9d1:                                ; preds = %dec_label_pc_c9c1
  call void @__stack_chk_fail()
  br label %dec_label_pc_c9d6

dec_label_pc_c9d6:                                ; preds = %dec_label_pc_c9d1, %dec_label_pc_c9c1
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

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3cc4d:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3d03f:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_3d04e:
  ret i32 0
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

