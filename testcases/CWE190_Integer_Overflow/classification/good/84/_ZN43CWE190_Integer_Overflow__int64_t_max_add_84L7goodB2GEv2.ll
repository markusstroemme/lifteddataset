@global_var_917c0 = external constant [54 x i8]
@global_var_95449 = external constant [5 x i8]
@0 = external global i32

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_5c31a:
  store i64 9223372036854775807, ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_5c34a:
  %0 = icmp eq ptr %result, inttoptr (i64 9223372036854775807 to ptr)
  br i1 %0, label %dec_label_pc_5c38d, label %dec_label_pc_5c370

dec_label_pc_5c370:                               ; preds = %dec_label_pc_5c34a
  %1 = ptrtoint ptr %result to i64
  %2 = add i64 %1, 1
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_5c39c

dec_label_pc_5c38d:                               ; preds = %dec_label_pc_5c34a
  call void @printLine(ptr @global_var_917c0)
  br label %dec_label_pc_5c39c

dec_label_pc_5c39c:                               ; preds = %dec_label_pc_5c38d, %dec_label_pc_5c370
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_5c4f8:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 8)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, i32 0)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_5c56e, label %dec_label_pc_5c538

dec_label_pc_5c538:                               ; preds = %dec_label_pc_5c4f8
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 8)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5c56e

dec_label_pc_5c56e:                               ; preds = %dec_label_pc_5c538, %dec_label_pc_5c4f8
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_7758b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_775ae, label %dec_label_pc_775a2

dec_label_pc_775a2:                               ; preds = %dec_label_pc_7758b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_775ae

dec_label_pc_775ae:                               ; preds = %dec_label_pc_775a2, %dec_label_pc_7758b
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

