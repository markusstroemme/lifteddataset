@global_var_6f3b8 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@0 = external global i32

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_4c8c6:
  %0 = bitcast ptr %result to ptr
  store i32 -1, ptr %0, align 4
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_4c8ec:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_4c939, label %dec_label_pc_4c906

dec_label_pc_4c906:                               ; preds = %dec_label_pc_4c8ec
  %4 = icmp ult i32 %2, 2147483647
  br i1 %4, label %dec_label_pc_4c913, label %dec_label_pc_4c92a

dec_label_pc_4c913:                               ; preds = %dec_label_pc_4c906
  %5 = mul i32 %2, 2
  call void @printUnsignedLine(i32 %5)
  br label %dec_label_pc_4c939

dec_label_pc_4c92a:                               ; preds = %dec_label_pc_4c906
  call void @printLine(ptr @global_var_6f3b8)
  br label %dec_label_pc_4c939

dec_label_pc_4c939:                               ; preds = %dec_label_pc_4c92a, %dec_label_pc_4c913, %dec_label_pc_4c8ec
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_4ca8e:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 4)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, i32 0)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_4cb01, label %dec_label_pc_4cacb

dec_label_pc_4cacb:                               ; preds = %dec_label_pc_4ca8e
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 4)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4cb01

dec_label_pc_4cb01:                               ; preds = %dec_label_pc_4cacb, %dec_label_pc_4ca8e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

