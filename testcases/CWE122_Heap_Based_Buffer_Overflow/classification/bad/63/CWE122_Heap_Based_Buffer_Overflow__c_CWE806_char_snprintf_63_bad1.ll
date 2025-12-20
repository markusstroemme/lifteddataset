@global_var_4871b = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2ad08:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_2ad44, label %dec_label_pc_2ad3a

dec_label_pc_2ad3a:                               ; preds = %dec_label_pc_2ad08
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2ad44:                               ; preds = %dec_label_pc_2ad08
  %5 = call ptr @memset(ptr %1, i32 65, i32 99)
  %6 = add i64 %2, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = bitcast ptr %stack_var_-24 to ptr
  call void @anon1(ptr nonnull %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_2ad86, label %dec_label_pc_2ad81

dec_label_pc_2ad81:                               ; preds = %dec_label_pc_2ad44
  call void @__stack_chk_fail()
  br label %dec_label_pc_2ad86

dec_label_pc_2ad86:                               ; preds = %dec_label_pc_2ad81, %dec_label_pc_2ad44
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_2ae1d:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = bitcast ptr %dataPtr to ptr
  %2 = call i32 @strlen(ptr %1)
  %3 = bitcast ptr %stack_var_-72 to ptr
  %4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %3, i32 %2, ptr @global_var_4871b, ptr %dataPtr)
  call void @printLine(ptr %1)
  %5 = bitcast ptr %dataPtr to ptr
  call void @free(ptr %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_2aed8, label %dec_label_pc_2aed3

dec_label_pc_2aed3:                               ; preds = %dec_label_pc_2ae1d
  call void @__stack_chk_fail()
  br label %dec_label_pc_2aed8

dec_label_pc_2aed8:                               ; preds = %dec_label_pc_2aed3, %dec_label_pc_2ae1d
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

