@global_var_47190 = external constant [21 x i8]
@0 = external global i32
@global_var_5c034 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_24085:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = load i32, ptr @global_var_5c034, align 4
  %3 = icmp eq i32 %2, 5
  br i1 %3, label %dec_label_pc_240ca, label %dec_label_pc_240b9

dec_label_pc_240b9:                               ; preds = %dec_label_pc_24085
  call void @printLine(ptr @global_var_47190)
  br label %dec_label_pc_240eb

dec_label_pc_240ca:                               ; preds = %dec_label_pc_24085
  %4 = inttoptr i64 %1 to ptr
  %5 = call ptr @memset(ptr %4, i32 65, i32 49)
  %6 = add i64 %1, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  br label %dec_label_pc_240eb

dec_label_pc_240eb:                               ; preds = %dec_label_pc_240ca, %dec_label_pc_240b9
  %8 = inttoptr i64 %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %9 = call i32 @strlen(ptr %8)
  %10 = bitcast ptr %stack_var_-72 to ptr
  %11 = call ptr @strncat(ptr nonnull %10, ptr %8, i32 %9)
  call void @printLine(ptr %8)
  %12 = icmp eq i64 %1, 0
  br i1 %12, label %dec_label_pc_24166, label %dec_label_pc_2415a

dec_label_pc_2415a:                               ; preds = %dec_label_pc_240eb
  %13 = inttoptr i64 %1 to ptr
  %14 = and i64 %1, 4294967295
  %15 = inttoptr i64 %14 to ptr
  call void @_ZdaPv(ptr %13, ptr %15)
  br label %dec_label_pc_24166

dec_label_pc_24166:                               ; preds = %dec_label_pc_2415a, %dec_label_pc_240eb
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_2417b, label %dec_label_pc_24176

dec_label_pc_24176:                               ; preds = %dec_label_pc_24166
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2417b

dec_label_pc_2417b:                               ; preds = %dec_label_pc_24176, %dec_label_pc_24166
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3a5bd:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3a5e0, label %dec_label_pc_3a5d4

dec_label_pc_3a5d4:                               ; preds = %dec_label_pc_3a5bd
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3a5e0

dec_label_pc_3a5e0:                               ; preds = %dec_label_pc_3a5d4, %dec_label_pc_3a5bd
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strncat(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

