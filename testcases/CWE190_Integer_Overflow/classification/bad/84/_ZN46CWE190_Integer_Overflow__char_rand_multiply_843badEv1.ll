@global_var_76cf3 = external constant [6 x i8]
@0 = external global i32

define void @anon0(ptr %result, i8 %arg2) local_unnamed_addr {
dec_label_pc_4f78e:
  %0 = bitcast ptr %result to ptr
  store i8 %arg2, ptr %0, align 1
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = call i32 @rand()
  %7 = sext i1 %3 to i32
  %storemerge.in = xor i32 %6, %7
  %8 = trunc i32 %storemerge.in to i8
  store i8 %8, ptr %0, align 1
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_4f7e8:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i8
  %3 = icmp slt i8 %2, 1
  br i1 %3, label %dec_label_pc_4f81a, label %dec_label_pc_4f803

dec_label_pc_4f803:                               ; preds = %dec_label_pc_4f7e8
  %4 = mul i8 %2, 2
  call void @printHexCharLine(i8 %4)
  br label %dec_label_pc_4f81a

dec_label_pc_4f81a:                               ; preds = %dec_label_pc_4f803, %dec_label_pc_4f7e8
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_4f925:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 1)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, i8 32)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_4f996, label %dec_label_pc_4f960

dec_label_pc_4f960:                               ; preds = %dec_label_pc_4f925
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 1)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4f996

dec_label_pc_4f996:                               ; preds = %dec_label_pc_4f960, %dec_label_pc_4f925
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

