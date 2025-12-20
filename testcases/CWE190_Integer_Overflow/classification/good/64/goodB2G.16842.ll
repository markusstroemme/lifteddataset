@global_var_8a020 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_568f4:
  %stack_var_-18 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 32767, ptr %stack_var_-18, align 2
  %1 = bitcast ptr %stack_var_-18 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_5693c, label %dec_label_pc_56937

dec_label_pc_56937:                               ; preds = %dec_label_pc_568f4
  call void @__stack_chk_fail()
  br label %dec_label_pc_5693c

dec_label_pc_5693c:                               ; preds = %dec_label_pc_56937, %dec_label_pc_568f4
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_569e5:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i16
  %3 = icmp eq i16 %2, 32767
  br i1 %3, label %dec_label_pc_56a30, label %dec_label_pc_56a10

dec_label_pc_56a10:                               ; preds = %dec_label_pc_569e5
  %4 = trunc i64 %1 to i32
  %5 = mul i32 %4, 65536
  %sext = add i32 %5, 65536
  %6 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %6)
  br label %dec_label_pc_56a3f

dec_label_pc_56a30:                               ; preds = %dec_label_pc_569e5
  call void @printLine(ptr @global_var_8a020)
  br label %dec_label_pc_56a3f

dec_label_pc_56a3f:                               ; preds = %dec_label_pc_56a30, %dec_label_pc_56a10
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

