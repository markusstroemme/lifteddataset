@global_var_8b7c0 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_6b28e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i64 @anon1(ptr nonnull %stack_var_-24)
  %2 = load i32, ptr %stack_var_-24, align 4
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %dec_label_pc_6b2f0, label %dec_label_pc_6b2c3

dec_label_pc_6b2c3:                               ; preds = %dec_label_pc_6b28e
  %4 = icmp sgt i32 %2, 1073741822
  br i1 %4, label %dec_label_pc_6b2e1, label %dec_label_pc_6b2cd

dec_label_pc_6b2cd:                               ; preds = %dec_label_pc_6b2c3
  %5 = mul i32 %2, 2
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_6b2f0

dec_label_pc_6b2e1:                               ; preds = %dec_label_pc_6b2c3
  call void @printLine(ptr @global_var_8b7c0)
  br label %dec_label_pc_6b2f0

dec_label_pc_6b2f0:                               ; preds = %dec_label_pc_6b2e1, %dec_label_pc_6b2cd, %dec_label_pc_6b28e
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_6b305, label %dec_label_pc_6b300

dec_label_pc_6b300:                               ; preds = %dec_label_pc_6b2f0
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_6b305

dec_label_pc_6b305:                               ; preds = %dec_label_pc_6b300, %dec_label_pc_6b2f0
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_6b34e:
  %0 = ptrtoint ptr %arg1 to i64
  store i32 2147483647, ptr %arg1, align 4
  ret i64 %0
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

