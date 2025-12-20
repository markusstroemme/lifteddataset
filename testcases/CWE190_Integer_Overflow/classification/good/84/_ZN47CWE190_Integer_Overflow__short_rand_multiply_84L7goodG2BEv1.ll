@global_var_7a994 = external constant [4 x i8]
@0 = external global i32

define void @anon0(ptr %result, i16 %arg2) local_unnamed_addr {
dec_label_pc_5dc0e:
  %0 = bitcast ptr %result to ptr
  store i16 2, ptr %0, align 2
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_5dc38:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i16
  %3 = icmp slt i16 %2, 1
  br i1 %3, label %dec_label_pc_5dc6c, label %dec_label_pc_5dc54

dec_label_pc_5dc54:                               ; preds = %dec_label_pc_5dc38
  %4 = mul i16 %2, 2
  %5 = sext i16 %4 to i32
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_5dc6c

dec_label_pc_5dc6c:                               ; preds = %dec_label_pc_5dc54, %dec_label_pc_5dc38
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_5dcec:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 2)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, i16 0)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_5dd5f, label %dec_label_pc_5dd29

dec_label_pc_5dd29:                               ; preds = %dec_label_pc_5dcec
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 2)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5dd5f

dec_label_pc_5dd5f:                               ; preds = %dec_label_pc_5dd29, %dec_label_pc_5dcec
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

