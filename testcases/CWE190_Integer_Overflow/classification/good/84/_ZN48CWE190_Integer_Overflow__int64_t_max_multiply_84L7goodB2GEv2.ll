@global_var_91e08 = external constant [54 x i8]
@global_var_95449 = external constant [5 x i8]
@0 = external global i32

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_5e154:
  store i64 9223372036854775807, ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_5e184:
  %0 = icmp sgt ptr %result, null
  br i1 %0, label %dec_label_pc_5e1a0, label %dec_label_pc_5e1e1

dec_label_pc_5e1a0:                               ; preds = %dec_label_pc_5e184
  %1 = icmp sgt ptr %result, inttoptr (i64 4611686018427387902 to ptr)
  br i1 %1, label %dec_label_pc_5e1d2, label %dec_label_pc_5e1b6

dec_label_pc_5e1b6:                               ; preds = %dec_label_pc_5e1a0
  %2 = ptrtoint ptr %result to i64
  %3 = mul i64 %2, 2
  call void @printLongLongLine(i64 %3)
  br label %dec_label_pc_5e1e1

dec_label_pc_5e1d2:                               ; preds = %dec_label_pc_5e1a0
  call void @printLine(ptr @global_var_91e08)
  br label %dec_label_pc_5e1e1

dec_label_pc_5e1e1:                               ; preds = %dec_label_pc_5e184, %dec_label_pc_5e1d2, %dec_label_pc_5e1b6
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_5e347:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 8)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, i32 0)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_5e3bd, label %dec_label_pc_5e387

dec_label_pc_5e387:                               ; preds = %dec_label_pc_5e347
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 8)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5e3bd

dec_label_pc_5e3bd:                               ; preds = %dec_label_pc_5e387, %dec_label_pc_5e347
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

