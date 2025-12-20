define void @anon0() local_unnamed_addr {
dec_label_pc_18e24:
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = bitcast ptr %1 to ptr
  %3 = insertvalue [5 x ptr] undef, ptr %2, 0
  store [5 x ptr] %3, ptr %dataArray_-64, align 8
  %4 = bitcast ptr %dataArray_-64 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_18e5e, label %dec_label_pc_18e54

dec_label_pc_18e54:                               ; preds = %dec_label_pc_18e24
  call void @exit(i32 -1)
  unreachable

dec_label_pc_18e5e:                               ; preds = %dec_label_pc_18e24
  %8 = inttoptr i64 %5 to ptr
  %9 = call ptr @memset(ptr %8, i32 65, i32 99)
  %10 = add i64 %5, 99
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 1
  %12 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %12)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_18ea8, label %dec_label_pc_18ea3

dec_label_pc_18ea3:                               ; preds = %dec_label_pc_18e5e
  call void @__stack_chk_fail()
  br label %dec_label_pc_18ea8

dec_label_pc_18ea8:                               ; preds = %dec_label_pc_18ea3, %dec_label_pc_18e5e
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_18f45:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %5 = inttoptr i64 %4 to ptr
  %6 = call i32 @strlen(ptr %5)
  %7 = inttoptr i64 %4 to ptr
  %8 = call ptr @memmove(ptr nonnull %stack_var_-72, ptr %7, i32 %6)
  call void @printLine(ptr %5)
  call void @free(ptr %7)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_18ff9, label %dec_label_pc_18ff4

dec_label_pc_18ff4:                               ; preds = %dec_label_pc_18f45
  call void @__stack_chk_fail()
  br label %dec_label_pc_18ff9

dec_label_pc_18ff9:                               ; preds = %dec_label_pc_18ff4, %dec_label_pc_18f45
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

