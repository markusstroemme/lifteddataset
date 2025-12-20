@global_var_8acc8 = external constant [3 x i8]
@global_var_8accb = external constant [21 x i8]
@global_var_8ace0 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define i32 @staticReturnsTrue.1841() local_unnamed_addr {
dec_label_pc_5d6bd:
  ret i32 1
}

define i32 @staticReturnsFalse.1842() local_unnamed_addr {
dec_label_pc_5d6cc:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_5d76b:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i32 @staticReturnsTrue.1841()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_5d7bd, label %dec_label_pc_5d79b

dec_label_pc_5d79b:                               ; preds = %dec_label_pc_5d76b
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_8acc8, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_5d7bd

dec_label_pc_5d7bd:                               ; preds = %dec_label_pc_5d79b, %dec_label_pc_5d76b
  %5 = call i32 @staticReturnsFalse.1842()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_5d7dc, label %dec_label_pc_5d7cb

dec_label_pc_5d7cb:                               ; preds = %dec_label_pc_5d7bd
  call void @printLine(ptr @global_var_8accb)
  br label %dec_label_pc_5d80e

dec_label_pc_5d7dc:                               ; preds = %dec_label_pc_5d7bd
  %7 = load i32, ptr %stack_var_-24, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %dec_label_pc_5d7ff, label %dec_label_pc_5d7e4

dec_label_pc_5d7e4:                               ; preds = %dec_label_pc_5d7dc
  %9 = add i32 %7, 1
  store i32 %9, ptr %stack_var_-24, align 4
  call void @printUnsignedLine(i32 %9)
  br label %dec_label_pc_5d80e

dec_label_pc_5d7ff:                               ; preds = %dec_label_pc_5d7dc
  call void @printLine(ptr @global_var_8ace0)
  br label %dec_label_pc_5d80e

dec_label_pc_5d80e:                               ; preds = %dec_label_pc_5d7ff, %dec_label_pc_5d7e4, %dec_label_pc_5d7cb
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_5d823, label %dec_label_pc_5d81e

dec_label_pc_5d81e:                               ; preds = %dec_label_pc_5d80e
  call void @__stack_chk_fail()
  br label %dec_label_pc_5d823

dec_label_pc_5d823:                               ; preds = %dec_label_pc_5d81e, %dec_label_pc_5d80e
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

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

