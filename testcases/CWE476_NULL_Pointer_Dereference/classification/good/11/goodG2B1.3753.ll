@global_var_482fe = external constant [21 x i8]
@global_var_4a578 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_102ea:
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %stack_var_-28 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 5, ptr %stack_var_-28, align 4
  %1 = call i32 @globalReturnsFalse()
  %2 = icmp eq i32 %1, 0
  store ptr %stack_var_-28, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_10333, label %dec_label_pc_1031a

dec_label_pc_1031a:                               ; preds = %dec_label_pc_102ea
  call void @printLine(ptr @global_var_482fe)
  br label %dec_label_pc_10333

dec_label_pc_10333:                               ; preds = %dec_label_pc_102ea, %dec_label_pc_1031a
  %3 = call i32 @globalReturnsTrue()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_1034e, label %dec_label_pc_10341

dec_label_pc_10341:                               ; preds = %dec_label_pc_10333
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %5 = load i32, ptr %stack_var_-24.0.reload, align 4
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_1034e

dec_label_pc_1034e:                               ; preds = %dec_label_pc_10341, %dec_label_pc_10333
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_10363, label %dec_label_pc_1035e

dec_label_pc_1035e:                               ; preds = %dec_label_pc_1034e
  call void @__stack_chk_fail()
  br label %dec_label_pc_10363

dec_label_pc_10363:                               ; preds = %dec_label_pc_1035e, %dec_label_pc_1034e
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

