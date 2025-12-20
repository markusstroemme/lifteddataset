@global_var_86078 = external constant [16 x i8]
@global_var_86088 = external constant [21 x i8]
@global_var_860a0 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc28c = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_32abd:
  %0 = load i32, ptr @global_var_bc28c, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_32ae7, label %dec_label_pc_32ad6

dec_label_pc_32ad6:                               ; preds = %dec_label_pc_32abd
  call void @printLine(ptr @global_var_86088)
  br label %dec_label_pc_32b15

dec_label_pc_32ae7:                               ; preds = %dec_label_pc_32abd
  %2 = icmp eq i32 %data, 2147483647
  br i1 %2, label %dec_label_pc_32b06, label %dec_label_pc_32af0

dec_label_pc_32af0:                               ; preds = %dec_label_pc_32ae7
  %3 = add i32 %data, 1
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_32b15

dec_label_pc_32b06:                               ; preds = %dec_label_pc_32ae7
  call void @printLine(ptr @global_var_860a0)
  br label %dec_label_pc_32b15

dec_label_pc_32b15:                               ; preds = %dec_label_pc_32b06, %dec_label_pc_32af0, %dec_label_pc_32ad6
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_32b18:
  %stack_var_-36.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_32b7d, label %dec_label_pc_32b6c

dec_label_pc_32b6c:                               ; preds = %dec_label_pc_32b18
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_32b8c

dec_label_pc_32b7d:                               ; preds = %dec_label_pc_32b18
  call void @printLine(ptr @global_var_86078)
  store i32 0, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_32b8c

dec_label_pc_32b8c:                               ; preds = %dec_label_pc_32b7d, %dec_label_pc_32b6c
  %stack_var_-36.0.reload = load i32, ptr %stack_var_-36.0.reg2mem, align 4
  store i32 0, ptr @global_var_bc28c, align 4
  call void @anon0(i32 %stack_var_-36.0.reload)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_32bb5, label %dec_label_pc_32bb0

dec_label_pc_32bb0:                               ; preds = %dec_label_pc_32b8c
  call void @__stack_chk_fail()
  br label %dec_label_pc_32bb5

dec_label_pc_32bb5:                               ; preds = %dec_label_pc_32bb0, %dec_label_pc_32b8c
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

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

