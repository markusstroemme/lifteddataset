@global_var_8bce8 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@0 = external global i32

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_6c66c:
  %0 = bitcast ptr %result to ptr
  store i32 2147483647, ptr %0, align 4
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_6c692:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %dec_label_pc_6c6df, label %dec_label_pc_6c6ac

dec_label_pc_6c6ac:                               ; preds = %dec_label_pc_6c692
  %4 = icmp sgt i32 %2, 1073741822
  br i1 %4, label %dec_label_pc_6c6d0, label %dec_label_pc_6c6b9

dec_label_pc_6c6b9:                               ; preds = %dec_label_pc_6c6ac
  %5 = mul i32 %2, 2
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_6c6df

dec_label_pc_6c6d0:                               ; preds = %dec_label_pc_6c6ac
  call void @printLine(ptr @global_var_8bce8)
  br label %dec_label_pc_6c6df

dec_label_pc_6c6df:                               ; preds = %dec_label_pc_6c6d0, %dec_label_pc_6c6b9, %dec_label_pc_6c692
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_6c7e4:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-24, i32 0)
  call void @anon1(ptr nonnull %stack_var_-24)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_6c837, label %dec_label_pc_6c832

dec_label_pc_6c832:                               ; preds = %dec_label_pc_6c7e4
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_6c837

dec_label_pc_6c837:                               ; preds = %dec_label_pc_6c832, %dec_label_pc_6c7e4
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

