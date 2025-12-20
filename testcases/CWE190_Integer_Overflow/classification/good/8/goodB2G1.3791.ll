@global_var_833c0 = external constant [4 x i8]
@global_var_833c4 = external constant [21 x i8]
@global_var_833e0 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define i32 @staticReturnsTrue.377() local_unnamed_addr {
dec_label_pc_16a0e:
  ret i32 1
}

define i32 @staticReturnsFalse.378() local_unnamed_addr {
dec_label_pc_16a1d:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_16ac4:
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = call i32 @staticReturnsTrue.377()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_16b17, label %dec_label_pc_16af5

dec_label_pc_16af5:                               ; preds = %dec_label_pc_16ac4
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_833c0, ptr nonnull %stack_var_-32)
  br label %dec_label_pc_16b17

dec_label_pc_16b17:                               ; preds = %dec_label_pc_16af5, %dec_label_pc_16ac4
  %5 = call i32 @staticReturnsFalse.378()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_16b36, label %dec_label_pc_16b25

dec_label_pc_16b25:                               ; preds = %dec_label_pc_16b17
  call void @printLine(ptr @global_var_833c4)
  br label %dec_label_pc_16b7a

dec_label_pc_16b36:                               ; preds = %dec_label_pc_16b17
  %7 = load i64, ptr %stack_var_-32, align 8
  %8 = icmp eq i64 %7, 9223372036854775807
  br i1 %8, label %dec_label_pc_16b6b, label %dec_label_pc_16b49

dec_label_pc_16b49:                               ; preds = %dec_label_pc_16b36
  %9 = add i64 %7, 1
  store i64 %9, ptr %stack_var_-32, align 8
  call void @printLongLongLine(i64 %9)
  br label %dec_label_pc_16b7a

dec_label_pc_16b6b:                               ; preds = %dec_label_pc_16b36
  call void @printLine(ptr @global_var_833e0)
  br label %dec_label_pc_16b7a

dec_label_pc_16b7a:                               ; preds = %dec_label_pc_16b6b, %dec_label_pc_16b49, %dec_label_pc_16b25
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_16b8f, label %dec_label_pc_16b8a

dec_label_pc_16b8a:                               ; preds = %dec_label_pc_16b7a
  call void @__stack_chk_fail()
  br label %dec_label_pc_16b8f

dec_label_pc_16b8f:                               ; preds = %dec_label_pc_16b8a, %dec_label_pc_16b7a
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

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

