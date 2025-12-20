@global_var_72f00 = external constant [54 x i8]
@global_var_76cf3 = external constant [6 x i8]
@0 = external global i32
@global_var_a5080 = external local_unnamed_addr global ptr
@global_var_72ef8 = external constant [3 x i8]

define void @anon0(ptr %result, i8 %arg2) local_unnamed_addr {
dec_label_pc_427c6:
  %0 = bitcast ptr %result to ptr
  store i8 %arg2, ptr %0, align 1
  %1 = load ptr, ptr @global_var_a5080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_72ef8)
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_4280a:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i8
  %3 = icmp eq i8 %2, 127
  br i1 %3, label %dec_label_pc_4283f, label %dec_label_pc_42825

dec_label_pc_42825:                               ; preds = %dec_label_pc_4280a
  %4 = add i8 %2, 1
  call void @printHexCharLine(i8 %4)
  br label %dec_label_pc_4284e

dec_label_pc_4283f:                               ; preds = %dec_label_pc_4280a
  call void @printLine(ptr @global_var_72f00)
  br label %dec_label_pc_4284e

dec_label_pc_4284e:                               ; preds = %dec_label_pc_4283f, %dec_label_pc_42825
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_42999:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 1)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, i8 32)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_42a0a, label %dec_label_pc_429d4

dec_label_pc_429d4:                               ; preds = %dec_label_pc_42999
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 1)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_42a0a

dec_label_pc_42a0a:                               ; preds = %dec_label_pc_429d4, %dec_label_pc_42999
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5a014:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5a037, label %dec_label_pc_5a02b

dec_label_pc_5a02b:                               ; preds = %dec_label_pc_5a014
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5a037

dec_label_pc_5a037:                               ; preds = %dec_label_pc_5a02b, %dec_label_pc_5a014
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

