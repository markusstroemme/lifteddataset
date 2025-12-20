@global_var_486a3 = external constant [3 x i8]
@global_var_486a6 = external constant [21 x i8]
@global_var_5e04c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_27ec5:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_27eff, label %dec_label_pc_27ef5

dec_label_pc_27ef5:                               ; preds = %dec_label_pc_27ec5
  call void @exit(i32 -1)
  unreachable

dec_label_pc_27eff:                               ; preds = %dec_label_pc_27ec5
  %4 = load i32, ptr @global_var_5e04c, align 4
  %5 = icmp eq i32 %4, 5
  br i1 %5, label %dec_label_pc_27f1b, label %dec_label_pc_27f0a

dec_label_pc_27f0a:                               ; preds = %dec_label_pc_27eff
  call void @printLine(ptr @global_var_486a6)
  br label %dec_label_pc_27f3c

dec_label_pc_27f1b:                               ; preds = %dec_label_pc_27eff
  %6 = call ptr @memset(ptr %1, i32 65, i32 49)
  %7 = ptrtoint ptr %1 to i64
  %8 = add i64 %7, 49
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  br label %dec_label_pc_27f3c

dec_label_pc_27f3c:                               ; preds = %dec_label_pc_27f1b, %dec_label_pc_27f0a
  %10 = bitcast ptr %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %11 = call i32 @strlen(ptr %10)
  %12 = bitcast ptr %stack_var_-72 to ptr
  %13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %12, i32 %11, ptr @global_var_486a3, ptr %1)
  call void @printLine(ptr %10)
  call void @free(ptr %1)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_27fcd, label %dec_label_pc_27fc8

dec_label_pc_27fc8:                               ; preds = %dec_label_pc_27f3c
  call void @__stack_chk_fail()
  br label %dec_label_pc_27fcd

dec_label_pc_27fcd:                               ; preds = %dec_label_pc_27fc8, %dec_label_pc_27f3c
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3c6eb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3c70e, label %dec_label_pc_3c702

dec_label_pc_3c702:                               ; preds = %dec_label_pc_3c6eb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3c70e

dec_label_pc_3c70e:                               ; preds = %dec_label_pc_3c702, %dec_label_pc_3c6eb
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

